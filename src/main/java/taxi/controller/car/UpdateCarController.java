package taxi.controller.car;

import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Manufacturer;
import taxi.service.CarService;
import taxi.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector
            .getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        Car car = carService.get(id);
        req.setAttribute("car", car);
        req.getRequestDispatcher("/WEB-INF/views/cars/update.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        Car car = carService.get(id);
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        String model = req.getParameter("model");
        car.setModel(model);
        car.setManufacturer(manufacturer);
        carService.update(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
