package taxi.controller.manufacturer;

import taxi.lib.Injector;
import taxi.model.Manufacturer;
import taxi.service.ManufacturerService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateManufacturerController extends HttpServlet {
    Injector injector = Injector.getInstance("taxi");
    ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        Manufacturer manufacturer = manufacturerService.get(id);
        req.setAttribute("manufacturer", manufacturer);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/update.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        Manufacturer manufacturer = manufacturerService.get(id);
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        manufacturer.setName(name);
        manufacturer.setCountry(country);
        manufacturerService.update(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/manufacturers");
    }
}
