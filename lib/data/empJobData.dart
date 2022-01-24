class EmpWeek {
  String week, month;
  List<EmployeesData> data;

  EmpWeek({
    required this.week,
    required this.data,
    required this.month,
  });
}

class EmployeesData {
  String employeesName, employeesImage, location;
  int totalBooking;
  EmployeesData(
      {required this.employeesName,
      required this.employeesImage,
      required this.totalBooking,
      required this.location});
}

List<EmpWeek> employeesDataList = [
  EmpWeek(
    week: "01-08",
    month: "March",
    data: [
      EmployeesData(
        employeesName: "Ralph Edwards",
        totalBooking: 2,
        employeesImage: "assets/image/emp1.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Guy Hawkins",
        employeesImage: "assets/image/emp2.jpg",
        totalBooking: 3,
        location: 'Dallas',
      ),
      EmployeesData(
        employeesName: "Cameron Williamson",
        totalBooking: 4,
        employeesImage: "assets/image/emp3.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Esther Howard",
        totalBooking: 5,
        employeesImage: "assets/image/emp4.jpg",
        location: 'Austin',
      ),
      EmployeesData(
        employeesName: "Jessie Smith",
        totalBooking: 8,
        employeesImage: "assets/image/emp5.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Ralph Edwards",
        totalBooking: 2,
        employeesImage: "assets/image/emp1.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Guy Hawkins",
        employeesImage: "assets/image/emp2.jpg",
        totalBooking: 3,
        location: 'Dallas',
      ),
      EmployeesData(
        employeesName: "Cameron Williamson",
        totalBooking: 4,
        employeesImage: "assets/image/emp3.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Esther Howard",
        totalBooking: 5,
        employeesImage: "assets/image/emp4.jpg",
        location: 'Austin',
      ),
      EmployeesData(
        employeesName: "Jessie Smith",
        totalBooking: 8,
        employeesImage: "assets/image/emp5.jpg",
        location: 'Houston',
      ),
    ],
  ),
  EmpWeek(
    week: "08-15",
    month: "March",
    data: [
      EmployeesData(
        employeesName: "Ralph Edwards",
        totalBooking: 3,
        employeesImage: "assets/image/emp1.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Guy Hawkins",
        employeesImage: "assets/image/emp2.jpg",
        totalBooking: 3,
        location: 'Dallas',
      ),
      EmployeesData(
        employeesName: "Cameron Williamson",
        totalBooking: 4,
        employeesImage: "assets/image/emp3.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Esther Howard",
        location: 'Austin',
        totalBooking: 5,
        employeesImage: "assets/image/emp4.jpg",
      ),
      EmployeesData(
        employeesName: "Jessie Smith",
        totalBooking: 8,
        employeesImage: "assets/image/emp5.jpg",
        location: 'Dallas',
      ),
      EmployeesData(
        employeesName: "Ralph Edwards",
        totalBooking: 3,
        employeesImage: "assets/image/emp1.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Guy Hawkins",
        employeesImage: "assets/image/emp2.jpg",
        totalBooking: 3,
        location: 'Dallas',
      ),
      EmployeesData(
        employeesName: "Cameron Williamson",
        totalBooking: 4,
        employeesImage: "assets/image/emp3.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Esther Howard",
        location: 'Austin',
        totalBooking: 5,
        employeesImage: "assets/image/emp4.jpg",
      ),
      EmployeesData(
        employeesName: "Jessie Smith",
        totalBooking: 8,
        employeesImage: "assets/image/emp5.jpg",
        location: 'Dallas',
      ),
    ],
  ),
  EmpWeek(
    week: "15-22",
    month: "March",
    data: [
      EmployeesData(
        employeesName: "Ralph Edwards",
        totalBooking: 4,
        employeesImage: "assets/image/emp1.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Guy Hawkins",
        location: 'Austin',
        employeesImage: "assets/image/emp2.jpg",
        totalBooking: 3,
      ),
      EmployeesData(
        employeesName: "Cameron Williamson",
        totalBooking: 4,
        employeesImage: "assets/image/emp3.jpg",
        location: 'Dallas',
      ),
      EmployeesData(
        employeesName: "Esther Howard",
        totalBooking: 5,
        employeesImage: "assets/image/emp4.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Jessie Smith",
        location: 'Austin',
        totalBooking: 8,
        employeesImage: "assets/image/emp5.jpg",
      ),
      EmployeesData(
        employeesName: "Ralph Edwards",
        totalBooking: 4,
        employeesImage: "assets/image/emp1.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Guy Hawkins",
        location: 'Austin',
        employeesImage: "assets/image/emp2.jpg",
        totalBooking: 3,
      ),
      EmployeesData(
        employeesName: "Cameron Williamson",
        totalBooking: 4,
        employeesImage: "assets/image/emp3.jpg",
        location: 'Dallas',
      ),
      EmployeesData(
        employeesName: "Esther Howard",
        totalBooking: 5,
        employeesImage: "assets/image/emp4.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Jessie Smith",
        location: 'Austin',
        totalBooking: 8,
        employeesImage: "assets/image/emp5.jpg",
      ),
    ],
  ),
  EmpWeek(
    week: "22-30",
    month: "March",
    data: [
      EmployeesData(
        employeesName: "Ralph Edwards",
        location: 'Austin',
        totalBooking: 5,
        employeesImage: "assets/image/emp1.jpg",
      ),
      EmployeesData(
        employeesName: "Guy Hawkins",
        employeesImage: "assets/image/emp2.jpg",
        location: 'Houston',
        totalBooking: 3,
      ),
      EmployeesData(
        employeesName: "Cameron Williamson",
        totalBooking: 4,
        employeesImage: "assets/image/emp3.jpg",
        location: 'Dallas',
      ),
      EmployeesData(
        location: 'Austin',
        employeesName: "Esther Howard",
        totalBooking: 5,
        employeesImage: "assets/image/emp4.jpg",
      ),
      EmployeesData(
        employeesName: "Jessie Smith",
        totalBooking: 8,
        employeesImage: "assets/image/emp5.jpg",
        location: 'Houston',
      ),
      EmployeesData(
        employeesName: "Ralph Edwards",
        location: 'Austin',
        totalBooking: 5,
        employeesImage: "assets/image/emp1.jpg",
      ),
      EmployeesData(
        employeesName: "Guy Hawkins",
        employeesImage: "assets/image/emp2.jpg",
        location: 'Houston',
        totalBooking: 3,
      ),
      EmployeesData(
        employeesName: "Cameron Williamson",
        totalBooking: 4,
        employeesImage: "assets/image/emp3.jpg",
        location: 'Dallas',
      ),
      EmployeesData(
        location: 'Austin',
        employeesName: "Esther Howard",
        totalBooking: 5,
        employeesImage: "assets/image/emp4.jpg",
      ),
      EmployeesData(
        employeesName: "Jessie Smith",
        totalBooking: 8,
        employeesImage: "assets/image/emp5.jpg",
        location: 'Houston',
      ),
    ],
  )
];
