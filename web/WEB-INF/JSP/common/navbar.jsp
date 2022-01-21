<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String fullname = (String) session.getAttribute("fullname");%>
<nav class="bg-rose-600 z-index-10">
    <div class="max-w-7xl mx-auto px-2 sm:px-4 lg:px-8">
        <div class="relative flex items-center justify-between h-16">
            <div class="flex items-center px-2 lg:px-0">
                <a class="flex items-center" href="IndexServlet">
                    <div class="w-10 h-10">
                        <svg  viewBox="0 0 160 160" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g clip-path="url(#clip0_512_6848)">
                                <path opacity="0.3" d="M134 66.8861C134 85.2544 116.715 108.268 83.2985 134.856L80.5 137L77.7015 134.784C44.2846 108.268 27 85.2544 27 66.8861C27 39.4409 50.2108 19 80.5 19C110.789 19 134 39.3695 134 66.8861Z" fill="white"/>
                                <path d="M120.5 67.9999C120.5 43.7999 102.833 26.6666 80.5 26.6666C58.1666 26.6666 40.5 43.7999 40.5 67.9999C40.5 83.5999 53.5 104.267 80.5 128.933C107.5 104.267 120.5 83.5999 120.5 67.9999ZM80.5 13.3333C108.5 13.3333 133.833 34.7999 133.833 67.9999C133.833 90.1333 116.033 116.333 80.5 146.667C44.9667 116.333 27.1667 90.1333 27.1667 67.9999C27.1667 34.7999 52.5 13.3333 80.5 13.3333Z" fill="white"/>
                                <path d="M98.9 70.5882H107L80 42L53 70.5882H61.1V96H66.5V89.6471H93.5V96H98.9V70.5882ZM67.067 64.2353H92.933L93.5 64.8388V70.5882H66.5V64.8388L67.067 64.2353ZM86.939 57.8824H73.061L80 50.5447L86.939 57.8824ZM66.5 83.2941V76.9412H93.5V83.2941H66.5Z" fill="white"/>
                            </g>
                            <defs>
                                <clipPath id="clip0_512_6848">
                                    <rect width="160" height="160" fill="white" transform="translate(0.5)"/>
                                </clipPath>
                            </defs>
                        </svg>
                    </div>
                    <p class="text-white text-3xl">HKCBooking</p>
                </a>
                <div class="hidden lg:block lg:ml-6">
                    <div class="flex space-x-4">
                        <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                        <a href="#" class="text-gray-100 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Dashboard</a>
                        <a href="#" class="text-gray-100 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Team</a>
                        <a href="#" class="text-gray-100 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Projects</a>
                        <a href="#" class="text-gray-100 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Calendar</a>
                    </div>
                </div>
            </div>
            <div class="flex lg:hidden">
                <!-- Mobile menu button -->
                <button type="button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <!--
                      Icon when menu is closed.

                      Heroicon name: outline/menu

                      Menu open: "hidden", Menu closed: "block"
                    -->
                    <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                    <!--
                      Icon when menu is open.

                      Heroicon name: outline/x

                      Menu open: "block", Menu closed: "hidden"
                    -->
                    <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
            <div class="hidden lg:block lg:ml-4">
                <div class="flex items-center">
                    <c:choose>
                        <c:when test="${fullname != null}">
                            <div class="flex items-center">
                                <button type="button" class="flex-shrink-0 bg-gray-800 p-1 rounded-full text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white">
                                    <span class="sr-only">View notifications</span>
                                    <!-- Heroicon name: outline/bell -->
                                    <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
                                    </svg>
                                </button>

                                <!-- Profile dropdown -->
                                <div class="ml-4 relative flex-shrink-0">
                                    <div class="flex items-center">
                                        <p class="font-semibold text-white"><%=fullname%></p>
                                        <div class="relative group">
                                            <span class="sr-only">Open user menu</span>
                                            <button class="h-16 w-16 flex justify-center items-center">
                                                <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M16 2.6665C8.64002 2.6665 2.66669 8.63984 2.66669 15.9998C2.66669 23.3598 8.64002 29.3332 16 29.3332C23.36 29.3332 29.3334 23.3598 29.3334 15.9998C29.3334 8.63984 23.36 2.6665 16 2.6665ZM16 6.6665C18.2134 6.6665 20 8.45317 20 10.6665C20 12.8798 18.2134 14.6665 16 14.6665C13.7867 14.6665 12 12.8798 12 10.6665C12 8.45317 13.7867 6.6665 16 6.6665ZM16 25.5998C12.6667 25.5998 9.72002 23.8932 8.00002 21.3065C8.04002 18.6532 13.3334 17.1998 16 17.1998C18.6534 17.1998 23.96 18.6532 24 21.3065C22.28 23.8932 19.3334 25.5998 16 25.5998Z" fill="#FFFDFD"/>
                                                </svg>

                                            </button>
                                            <div class="z-index-10 group-focus:block hover:block hidden absolute right-0 top-3/4 mt-2 w-48 rounded-md shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none group-hover:block bg-gray-100" role="menu" aria-orientation="vertical" aria-labelledby="user-menu-button" tabindex="-1">
                                                <!-- Active: "bg-gray-100", Not Active: "" -->
                                                <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-700 hover:text-white rounded-tl-md rounded-tr-md" role="menuitem" tabindex="-1" id="user-menu-item-0">Your Profile</a>
                                                <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-700 hover:text-white" role="menuitem" tabindex="-1" id="user-menu-item-1">Booking History</a>
                                                <a href="LogoutServlet" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-700 hover:text-white rounded-bl-md rounded-br-md" role="menuitem" tabindex="-1" id="user-menu-item-2">Sign out</a>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="flex">
                                <a class="bg-white text-base font-semibold text-rose-600 px-2 py-1 rounded mr-4" href="LoginServlet">Login</a>
                                <a class="bg-white text-base font-semibold text-rose-600 px-2 py-1 rounded" href="RegisterServlet">Register</a>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>

    <!-- Mobile menu, show/hide based on menu state. -->
    <div class="lg:hidden" id="mobile-menu">
        <div class="px-2 pt-2 pb-3 space-y-1">
            <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
            <a href="#" class="bg-gray-900 text-white block px-3 py-2 rounded-md text-base font-medium">Dashboard</a>
            <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Team</a>
            <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Projects</a>
            <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Calendar</a>
        </div>
        <div class="pt-4 pb-3 border-t border-gray-700">
            <div class="flex items-center px-5">
                <div class="flex-shrink-0">
                    <img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
                </div>
                <div class="ml-3">
                    <div class="text-base font-medium text-white">Tom Cook</div>
                    <div class="text-sm font-medium text-gray-400">tom@example.com</div>
                </div>
                <button type="button" class="ml-auto flex-shrink-0 bg-gray-800 p-1 rounded-full text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white">
                    <span class="sr-only">View notifications</span>
                    <!-- Heroicon name: outline/bell -->
                    <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
                    </svg>
                </button>
            </div>
            <div class="mt-3 px-2 space-y-1">
                <a href="#" class="block px-3 py-2 rounded-md text-base font-medium text-gray-400 hover:text-white hover:bg-gray-700">Your Profile</a>
                <a href="#" class="block px-3 py-2 rounded-md text-base font-medium text-gray-400 hover:text-white hover:bg-gray-700">Settings</a>
                <a href="#" class="block px-3 py-2 rounded-md text-base font-medium text-gray-400 hover:text-white hover:bg-gray-700">Sign out</a>
            </div>
        </div>
    </div>
</nav>