/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.RoomDetail;
import guard.UseGuard;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import repositories.RoomDetailRepository;
import variables.Routers;
import variables.RoomStatus;
import variables.UserRole;

@WebServlet(name = "EditRoomServlet", urlPatterns = {"/" + Routers.EDIT_ROOM_SERVLET})
public class EditRoomServlet extends HttpServlet {

    protected boolean handleOnGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {

        RoomDetailRepository roomDetailRepository = new RoomDetailRepository();
        ArrayList<RoomDetail> roomDetails = roomDetailRepository.getAllRoomDetail();

        for (RoomDetail roomDetail : (ArrayList<RoomDetail>) roomDetails.clone()) {
            if (roomDetail.getRoom().getRoomStatus().equals(RoomStatus.status.DELETED.toString())) {
                roomDetails.remove(roomDetail);
            }
        }

        request.setAttribute("roomDetails", roomDetails);
        return true;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            UseGuard useGuard = new UseGuard(request, response);

            if (!useGuard.useAuth()) {
                response.sendRedirect(Routers.LOGIN_SERVLET);
                return;
            }

            if (!useGuard.useRole(UserRole.role.ADMIN)) {
                response.sendRedirect(Routers.INDEX_SERVLET);
                return;
            }

            if (!handleOnGet(request, response)) {
                request.getRequestDispatcher(Routers.ERROR_404_PAGE).forward(request, response);
                return;
            }
            request.getRequestDispatcher(Routers.EDIT_ROOM_PAGE).forward(request, response);
        } catch (Exception ex) {
            request.getRequestDispatcher(Routers.ERROR_500_PAGE).forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
