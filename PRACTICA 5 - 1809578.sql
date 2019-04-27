USE Autobuses

INSERT INTO Asiento 
(iIdAsiento, iIdSituacion) 
VALUES (3, 1)

INSERT INTO Asiento
(iIdAsiento, iIdSituacion)
VALUES (4,2)

INSERT INTO Asiento
(iIdAsiento, iIdSituacion)
VALUES(5,1)

INSERT INTO Asiento
(iIdAsiento, iIdSituacion)
VALUES (6,1)

INSERT INTO Asiento
(iIdAsiento, iIdSituacion)
VALUES(7,2)

INSERT INTO Asiento
(iIdAsiento, iIdSituacion)
VALUES (8,2)

INSERT INTO Asiento
(iIdAsiento, iIdSituacion)
VALUES(9,2)

INSERT INTO Asiento
(iIdAsiento, iIdSituacion)
VALUES (10,2)

INSERT INTO Asiento
(iIdAsiento, iIdSituacion)
VALUES(11,1)

INSERT INTO Asiento
(iIdAsiento, iIdSituacion)
VALUES (12,2)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'DINA', 2010, 60)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'DINA', 2010, 55)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'MERCEDES BENZ', 2015, 50)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'MERCEDES BENZ', 2012, 70)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'VOLVO', 2017, 80)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'VOLVO', 2012, 60)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'KING', 2009, 60)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'KING', 2015, 80)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'ISUZU', 2011, 70)

INSERT INTO Autobus
(iIdAutobus, vMarca, iModelo, tCantidadPasajeros)
VALUES (13, N'ISUZU', 2016, 70)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (36, 13, 30)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (37, 14, 31)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (38, 15, 32)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (39, 16, 33)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (40, 17, 34)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (41, 18, 35)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (42, 19, 36)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (43, 20, 37)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (44, 21, 38)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (45, 22, 39)

INSERT INTO Chofer
(iIdChofer, iIdAutobus, iIdEmpleado)
VALUES (46, 23, 40)

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (47, N'1458956')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (48, N'7854962')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (49, N'562789')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (50, N'1524867')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (51, N'1234567')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (52, N'9874563')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (53, N'8524163')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (54, N'0124687')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (55, N'0324587')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (56, N'0012548')

INSERT INTO Codigo
(iIdCodigo, uCodigo)
VALUES (57, N'8855694')
INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (72, N'Adobes')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (73, N'Allende')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (74, N'Dallas')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (75, N'Detroit')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (76, N'Denton')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (77, N'Garland')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (78, N'Houston')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (79, N'Laredo')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (80, N'Longview')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (81, N'San Antonio')

INSERT INTO Destino
(iIdDestino, vDestino)
VALUES (82, N'Waco')

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (25, N'Natalia', N'Gomez', N'Valdez', 20, 24)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (26, N'Rebeca', N'De Luna', N'Garcia', 19, 24)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (27, N'Angelica', N'Ceslestino', N'Vazquez', 19, 24)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (28, N'Abigail', N'Nava', N'Garza', 20, 24)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (29, N'Miguel', N'Castillo', N'Rodriguez', 22, 23)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (30, N'Jennifer', N'Cepeda', N'Garcia', 22, 23)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (31, N'Carlos', N'Orozco', N'Perez', 29, 24)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (32, N'Oscar', N'Garza', N'Garza', 42, 23)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (33, N'Martha', N'Alvarez', N'Garza', 40, 23)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (34, N'Gabriela', N'Escobedo', N'Hernandez', 28, 24)

INSERT INTO Empleados
(iIdEmpleado, vNomEm, vApPat, vApMat, tEdadEmp, iIdPuesto)
VALUES (35, N'Eduardo', N'Lozano', N'Cabrera', 27, 23)

INSERT INTO EstadoV
(iIdEstado, vEstadoV)
VALUES (58, N'DISPONIBLE')

INSERT INTO EstadoV
(iIdEstado, vEstadoV)
VALUES (59, N'NO DISPONIBLE')

INSERT INTO EstadoV
(iIdEstado, vEstadoV)
VALUES (60, N'PROGRESO') 

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (63, N'Monterrey')

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (63, N'Monclova')

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (63, N'Cadereyta')
 
INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (64, N'Ciudad de Mexico')

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (65, N'Motemorelos')

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (66, N'Linares')

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (67, N'Mina')

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (68, N'Saltillo')

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (69, N'Marin')

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (70, N'Matamoros')

INSERT INTO Origen
(iIdOrigen, vOrigen)
VALUES (71, N'Santiago')

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (105, 190.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (106, 200.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (107, 180.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (108, 250.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (109, 270.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (110, 210.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (111, 300.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (112, 270.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (113, 290.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (114, 185.0000)

INSERT INTO Precio
(iIdPrecio, mPrecio)
VALUES (115, 185.0000)

INSERT INTO Puesto
(iIdPuesto, vPuesto)
VALUES (23, N'CHOFER')

INSERT INTO Puesto
(iIdPuesto, vPuesto)
VALUES (24, N'VENDEDOR')

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (83, 62, 77, CAST(N'03:00:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (84, 71, 78, CAST(N'08:50:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (85, 61, 75, CAST(N'01:30:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (86, 65, 74, CAST(N'06:05:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (87, 69, 79, CAST(N'02:30:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (88, 63, 80, CAST(N'04:20:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (89, 64, 72, CAST(N'00:50:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (90, 68, 76, CAST(N'02:15:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (91, 66, 81, CAST(N'03:35:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (92, 67, 73, CAST(N'01:45:00' AS Time))

INSERT INTO Ruta
(iIdRuta, iIdOrigen, iIdDestino, tTiempoEstimado)
VALUES (93, 62, 82, CAST(N'01:45:00' AS Time))

INSERT INTO SituacionAsi
(iIdSituacionAsi, vSituacionA)
VALUES(1, N'OCUPADO')

INSERT INTO SituacionAsi
(iIdSituacionAsi, vSituacionA)
VALUES (2, N'DISPONIBLE')

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (94, 83, 36, CAST(N'2019-01-10' AS Date), 58)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (95, 93, 43, CAST(N'2019-10-20' AS Date), 59)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (96, 88, 46, CAST(N'2019-07-06' AS Date), 58)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (97, 85, 37, CAST(N'2019-12-22' AS Date), 58)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (98, 89, 42, CAST(N'2019-03-18' AS Date), 60)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (99, 91, 45, CAST(N'2019-11-21' AS Date), 60)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (100, 84, 41, CAST(N'2019-05-17' AS Date), 59)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (101, 86, 38, CAST(N'2019-04-02' AS Date), 58)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (102, 90, 44, CAST(N'2019-06-09' AS Date), 58)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (103, 87, 40, CAST(N'2019-02-15' AS Date), 60)

INSERT INTO Viaje
(iIdViaje, iIdRuta, iIdChofer, dFechaS, iIdEstadoV)
VALUES (104, 92, 39, CAST(N'2019-02-15' AS Date), 59)






