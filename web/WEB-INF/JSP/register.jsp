<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>
        <div class="flex flex-col min-h-screen">

            <jsp:include page="./common/navbar.jsp"></jsp:include>
                <div class="min-h-full flex flex-1">
                    <div class="flex-1 flex flex-col justify-center py-12 px-4 sm:px-6 lg:flex-none lg:px-20 xl:px-24 h-full">
                        <div class="mx-auto w-full max-w-sm lg:w-96">
                            <div>
                                <a class="flex items-center" href="IndexServlet">
                                    <div class="w-10 h-10">
                                        <svg viewBox="0 0 160 160" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path opacity="0.3" d="M133.5 66.8861C133.5 85.2544 116.215 108.268 82.7985 134.856L80 137L77.2015 134.784C43.7846 108.268 26.5 85.2544 26.5 66.8861C26.5 39.4409 49.7108 19 80 19C110.289 19 133.5 39.3695 133.5 66.8861Z" fill="#E11D48"/>
                                        <path d="M120 67.9999C120 43.7999 102.333 26.6666 80 26.6666C57.6667 26.6666 40 43.7999 40 67.9999C40 83.5999 53 104.267 80 128.933C107 104.267 120 83.5999 120 67.9999ZM80 13.3333C108 13.3333 133.333 34.7999 133.333 67.9999C133.333 90.1333 115.533 116.333 80 146.667C44.4667 116.333 26.6667 90.1333 26.6667 67.9999C26.6667 34.7999 52 13.3333 80 13.3333Z" fill="#E11D48"/>
                                        <path d="M98.4 70.5882H106.5L79.5 42L52.5 70.5882H60.6V96H66V89.6471H93V96H98.4V70.5882ZM66.567 64.2353H92.433L93 64.8388V70.5882H66V64.8388L66.567 64.2353ZM86.439 57.8824H72.561L79.5 50.5447L86.439 57.8824ZM66 83.2941V76.9412H93V83.2941H66Z" fill="#E11D48"/>
                                        </svg>

                                    </div>
                                    <p class="text-rose-600 text-3xl">HKCBooking</p>
                                </a>
                                <h2 class="mt-6 text-3xl font-extrabold text-gray-900">Sign up an account</h2>
                            </div>

                            <div class="mt-8">
                                <div class="mt-6">
                                    <form action="LoginServlet" method="POST" class="space-y-6">
                                        <div>
                                            <label for="username" class="block text-sm font-medium text-gray-700">Username</label>
                                            <div class="mt-1">
                                                <input id="username" name="username" type="text" autocomplete="email" required class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
                                            </div>
                                            <p class="mt-2 text-sm text-red-600" id="username">${requestScope.usernameError}</p>
                                    </div>

                                    <div class="space-y-1">
                                        <label for="password" class="block text-sm font-medium text-gray-700"> Password </label>
                                        <div class="mt-1">
                                            <input id="password" name="password" type="password" autocomplete="current-password" required class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
                                        </div>
                                        <p class="mt-2 text-sm text-red-600" id="password">${requestScope.passwordError}</p>
                                    </div>
                                    <div class="space-y-1">
                                        <label for="confirmPassword" class="block text-sm font-medium text-gray-700"> Confirm Password </label>
                                        <div class="mt-1">
                                            <input id="confirmPassword" name="confirmPassword" type="password" required class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
                                        </div>
                                        <p class="mt-2 text-sm text-red-600" id="confirmPassword">${requestScope.confirmPasswordError}</p>
                                    </div>
                                    <div class="space-y-1">
                                        <label for="fullname" class="block text-sm font-medium text-gray-700"> Fullname </label>
                                        <div class="mt-1">
                                            <input id="fullname" name="fullname" type="text" autocomplete="fullname" required class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
                                        </div>
                                        <p class="mt-2 text-sm text-red-600" id="fullname">${requestScope.fullnameError}</p>
                                    </div>
                                    <div class="space-y-1">
                                        <label for="phone" class="block text-sm font-medium text-gray-700"> Phone </label>
                                        <div class="mt-1">
                                            <input id="phone" name="phone" type="text" autocomplete="phone" required class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
                                        </div>
                                        <p class="mt-2 text-sm text-red-600" id="phone">${requestScope.phoneError}</p>
                                    </div>
                                    <div class="space-y-1">
                                        <label for="email" class="block text-sm font-medium text-gray-700"> Email </label>
                                        <div class="mt-1">
                                            <input id="email" name="email" type="email" autocomplete="email" required class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" />
                                        </div>
                                        <p class="mt-2 text-sm text-red-600" id="email">${requestScope.emailError}</p>
                                    </div>


                                    <div class="text-right">
                                        <a href="LoginServlet" class="text-sm font-medium text-indigo-600 hover:text-indigo-500"> Already have account?</a>
                                    </div>

                                    <div>
                                        <button type="submit" class="w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-rose-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Sign up</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hidden lg:block relative w-0 flex-1">
                    <img class="absolute inset-0 h-full w-full object-cover" src="https://img1.10bestmedia.com/Images/Photos/378649/Park-Hyatt-New-York-Manhattan-Sky-Suite-Master-Bedroom-low-res_54_990x660.jpg" alt="" />
                </div>


            </div>
        </div>
    </div>
</body>

</html>