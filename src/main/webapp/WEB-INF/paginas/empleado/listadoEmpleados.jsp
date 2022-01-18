
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_MX"/>

<section id="empleados">

    <div class="container">
        <div class="row">

            <div class="col-md-9">

                <div class="card">

                    <div class="card-header">
                        <h4>Listado de empleados</h4> 
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Num Empleado</th>
                                <th>Nombre</th>
                                <th>Apellido Paterno</th>
                                <th>Apellido Materno</th>
                                <th>Puesto</th>
                                <th>Area</th>
                                <th>Jefe Inmediato</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="empleado" items="${empleados}" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${empleado.numeroEmpleado}</td>
                                    <td>${empleado.nombre}</td>                               
                                    <td>${empleado.apellidoPaterno}</td>
                                    <td>${empleado.apellidoMaterno}</td>
                                    <td>${empleado.puesto}</td>
                                    <td>${empleado.area}</td>
                                    <td>${empleado.jefeInmediato}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&numeroEmpleado=${empleado.numeroEmpleado}"
                                           class="btn btn-success btn-block">
                                            <i class="fas fa-angle-double-right"></i> Editar 
                                    </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=asistencia&numeroEmpleado=${empleado.numeroEmpleado}"
                                           class="btn btn-success btn-block">
                                            <i class="fas fa-angle-double-right"></i> Asistencia
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>   
                </div>   
            </div> 
            <!-- Totales -->    
            <div class="col-md-3">
                <diV class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total Empleados</h3>
                        <h4 class="display-4">
                            <i class="fas fa-user"></i>${totalEmpleados}
                        </h4>
                    </div>
                </diV>        
            </div>
        </div>
    </div>

</section>

<jsp:include page="agregarEmpleado.jsp"/>