/*
 Navicat Premium Data Transfer

 Source Server         : 学校
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3307
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 24/04/2024 16:32:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `ID` tinyint UNSIGNED NOT NULL,
  `CourseName` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES (0, '蒙语文');
INSERT INTO `courses` VALUES (1, '汉语文');
INSERT INTO `courses` VALUES (2, '数学');
INSERT INTO `courses` VALUES (3, '英语');
INSERT INTO `courses` VALUES (4, '物理');
INSERT INTO `courses` VALUES (5, '化学');
INSERT INTO `courses` VALUES (6, '生物');
INSERT INTO `courses` VALUES (7, '历史');
INSERT INTO `courses` VALUES (8, '政治');
INSERT INTO `courses` VALUES (9, '地理');
INSERT INTO `courses` VALUES (10, '体育');
INSERT INTO `courses` VALUES (11, '信息技术');
INSERT INTO `courses` VALUES (12, '书法');
INSERT INTO `courses` VALUES (13, '美术');

-- ----------------------------
-- Table structure for scores
-- ----------------------------
DROP TABLE IF EXISTS `scores`;
CREATE TABLE `scores`  (
  `CourseID` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '课程ID',
  `StudentID` int UNSIGNED NULL DEFAULT NULL COMMENT '学生ID',
  `Score` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '成绩',
  `LecturerID` int UNSIGNED NOT NULL COMMENT '任课老师ID',
  INDEX `scores_courses_ID_fk`(`CourseID` ASC) USING BTREE,
  INDEX `scores_students_ID_fk`(`StudentID` ASC) USING BTREE,
  INDEX `scores_workers_ID_fk`(`LecturerID` ASC) USING BTREE,
  CONSTRAINT `scores_courses_ID_fk` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `scores_students_ID_fk` FOREIGN KEY (`StudentID`) REFERENCES `students` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `scores_workers_ID_fk` FOREIGN KEY (`LecturerID`) REFERENCES `workers` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '成绩单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scores
-- ----------------------------
INSERT INTO `scores` VALUES (0, 0, 89, 2);
INSERT INTO `scores` VALUES (1, 0, 45, 4);
INSERT INTO `scores` VALUES (4, 0, 84, 12);
INSERT INTO `scores` VALUES (2, 1, 97, 54);
INSERT INTO `scores` VALUES (1, 1, 86, 37);
INSERT INTO `scores` VALUES (3, 1, 92, 11);
INSERT INTO `scores` VALUES (1, 2, 85, 23);
INSERT INTO `scores` VALUES (3, 2, 58, 55);
INSERT INTO `scores` VALUES (4, 9, 87, 12);
INSERT INTO `scores` VALUES (8, 50, 32, 16);
INSERT INTO `scores` VALUES (2, 22, 76, 5);
INSERT INTO `scores` VALUES (10, 36, 91, 18);
INSERT INTO `scores` VALUES (6, 3, 45, 3);
INSERT INTO `scores` VALUES (12, 18, 68, 20);
INSERT INTO `scores` VALUES (1, 42, 89, 4);
INSERT INTO `scores` VALUES (0, 60, 23, 36);
INSERT INTO `scores` VALUES (3, 8, 94, 55);
INSERT INTO `scores` VALUES (7, 32, 76, 15);
INSERT INTO `scores` VALUES (9, 56, 58, 17);
INSERT INTO `scores` VALUES (5, 15, 82, 7);
INSERT INTO `scores` VALUES (2, 48, 74, 24);
INSERT INTO `scores` VALUES (0, 2, 39, 22);
INSERT INTO `scores` VALUES (5, 19, 67, 7);
INSERT INTO `scores` VALUES (8, 41, 91, 30);
INSERT INTO `scores` VALUES (7, 34, 52, 29);
INSERT INTO `scores` VALUES (1, 6, 83, 1);
INSERT INTO `scores` VALUES (2, 24, 77, 54);
INSERT INTO `scores` VALUES (3, 58, 45, 25);
INSERT INTO `scores` VALUES (11, 13, 92, 19);
INSERT INTO `scores` VALUES (2, 30, 71, 54);
INSERT INTO `scores` VALUES (6, 53, 85, 14);
INSERT INTO `scores` VALUES (0, 4, 28, 36);
INSERT INTO `scores` VALUES (9, 26, 63, 61);
INSERT INTO `scores` VALUES (10, 46, 96, 32);
INSERT INTO `scores` VALUES (12, 10, 75, 64);
INSERT INTO `scores` VALUES (13, 38, 41, 65);
INSERT INTO `scores` VALUES (1, 61, 87, 9);
INSERT INTO `scores` VALUES (8, 1, 52, 30);
INSERT INTO `scores` VALUES (3, 12, 75, 11);
INSERT INTO `scores` VALUES (6, 43, 86, 28);
INSERT INTO `scores` VALUES (9, 9, 48, 61);
INSERT INTO `scores` VALUES (2, 29, 93, 5);
INSERT INTO `scores` VALUES (10, 51, 67, 18);
INSERT INTO `scores` VALUES (8, 17, 53, 30);
INSERT INTO `scores` VALUES (0, 39, 79, 2);
INSERT INTO `scores` VALUES (11, 37, 64, 19);
INSERT INTO `scores` VALUES (4, 14, 90, 26);
INSERT INTO `scores` VALUES (5, 38, 33, 13);
INSERT INTO `scores` VALUES (1, 7, 82, 4);
INSERT INTO `scores` VALUES (7, 25, 58, 15);
INSERT INTO `scores` VALUES (13, 59, 44, 51);
INSERT INTO `scores` VALUES (2, 4, 76, 54);
INSERT INTO `scores` VALUES (12, 19, 89, 34);
INSERT INTO `scores` VALUES (9, 41, 21, 61);
INSERT INTO `scores` VALUES (0, 8, 95, 0);
INSERT INTO `scores` VALUES (10, 32, 67, 62);
INSERT INTO `scores` VALUES (6, 56, 73, 3);
INSERT INTO `scores` VALUES (3, 15, 62, 11);
INSERT INTO `scores` VALUES (11, 48, 84, 19);
INSERT INTO `scores` VALUES (4, 2, 38, 12);
INSERT INTO `scores` VALUES (5, 20, 73, 43);
INSERT INTO `scores` VALUES (8, 42, 95, 60);
INSERT INTO `scores` VALUES (1, 35, 51, 9);
INSERT INTO `scores` VALUES (13, 60, 27, 21);
INSERT INTO `scores` VALUES (7, 10, 68, 59);
INSERT INTO `scores` VALUES (6, 26, 88, 3);
INSERT INTO `scores` VALUES (2, 46, 57, 24);
INSERT INTO `scores` VALUES (9, 11, 94, 31);
INSERT INTO `scores` VALUES (12, 20, 67, 34);
INSERT INTO `scores` VALUES (4, 38, 92, 42);
INSERT INTO `scores` VALUES (7, 7, 41, 29);
INSERT INTO `scores` VALUES (2, 55, 86, 5);
INSERT INTO `scores` VALUES (9, 30, 59, 17);
INSERT INTO `scores` VALUES (5, 16, 73, 57);
INSERT INTO `scores` VALUES (11, 40, 95, 49);
INSERT INTO `scores` VALUES (1, 3, 50, 9);
INSERT INTO `scores` VALUES (13, 21, 84, 35);
INSERT INTO `scores` VALUES (6, 36, 39, 14);
INSERT INTO `scores` VALUES (3, 10, 82, 25);
INSERT INTO `scores` VALUES (10, 34, 74, 32);
INSERT INTO `scores` VALUES (8, 58, 28, 60);
INSERT INTO `scores` VALUES (0, 13, 63, 52);
INSERT INTO `scores` VALUES (5, 31, 96, 57);
INSERT INTO `scores` VALUES (1, 53, 75, 9);
INSERT INTO `scores` VALUES (11, 2, 41, 63);
INSERT INTO `scores` VALUES (4, 24, 87, 56);
INSERT INTO `scores` VALUES (3, 62, 32, 11);
INSERT INTO `scores` VALUES (9, 18, 68, 61);
INSERT INTO `scores` VALUES (2, 42, 89, 5);
INSERT INTO `scores` VALUES (6, 60, 23, 14);
INSERT INTO `scores` VALUES (12, 8, 94, 64);
INSERT INTO `scores` VALUES (0, 32, 76, 66);
INSERT INTO `scores` VALUES (8, 56, 58, 16);
INSERT INTO `scores` VALUES (1, 15, 82, 4);
INSERT INTO `scores` VALUES (0, 48, 74, 36);
INSERT INTO `scores` VALUES (7, 2, 39, 15);
INSERT INTO `scores` VALUES (6, 19, 67, 3);
INSERT INTO `scores` VALUES (2, 41, 91, 54);
INSERT INTO `scores` VALUES (8, 27, 81, 46);
INSERT INTO `scores` VALUES (1, 4, 69, 9);
INSERT INTO `scores` VALUES (13, 48, 91, 6);
INSERT INTO `scores` VALUES (7, 6, 55, 45);
INSERT INTO `scores` VALUES (6, 23, 76, 28);
INSERT INTO `scores` VALUES (1, 41, 39, 4);
INSERT INTO `scores` VALUES (9, 32, 64, 47);
INSERT INTO `scores` VALUES (0, 15, 85, 22);
INSERT INTO `scores` VALUES (10, 29, 47, 48);
INSERT INTO `scores` VALUES (4, 57, 72, 42);
INSERT INTO `scores` VALUES (5, 10, 98, 43);
INSERT INTO `scores` VALUES (11, 34, 51, 33);
INSERT INTO `scores` VALUES (0, 58, 75, 36);
INSERT INTO `scores` VALUES (12, 13, 31, 64);
INSERT INTO `scores` VALUES (9, 21, 87, 31);
INSERT INTO `scores` VALUES (0, 46, 56, 22);
INSERT INTO `scores` VALUES (10, 2, 83, 48);
INSERT INTO `scores` VALUES (6, 24, 67, 3);
INSERT INTO `scores` VALUES (2, 62, 42, 54);
INSERT INTO `scores` VALUES (11, 18, 76, 63);
INSERT INTO `scores` VALUES (4, 42, 89, 42);
INSERT INTO `scores` VALUES (5, 60, 23, 13);
INSERT INTO `scores` VALUES (8, 8, 94, 46);
INSERT INTO `scores` VALUES (1, 32, 76, 23);
INSERT INTO `scores` VALUES (13, 56, 58, 6);
INSERT INTO `scores` VALUES (7, 15, 82, 29);
INSERT INTO `scores` VALUES (6, 48, 74, 14);
INSERT INTO `scores` VALUES (2, 2, 39, 10);
INSERT INTO `scores` VALUES (9, 19, 67, 31);
INSERT INTO `scores` VALUES (0, 41, 91, 52);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `ID` int UNSIGNED NOT NULL,
  `Name` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `Password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '123456' COMMENT '密码',
  `ClassTeacherID` int UNSIGNED NULL DEFAULT NULL COMMENT '班主任ID',
  `Class` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班级',
  `Image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `students_workers_ID_fk`(`ClassTeacherID` ASC) USING BTREE,
  CONSTRAINT `students_workers_ID_fk` FOREIGN KEY (`ClassTeacherID`) REFERENCES `workers` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (0, '包泽华', '123456', 2, '高三1班', NULL);
INSERT INTO `students` VALUES (1, '梅正欣', '123456', 5, '高三286班', NULL);
INSERT INTO `students` VALUES (2, '胡十三', '123456', 6, '初三2班', NULL);
INSERT INTO `students` VALUES (3, '张三', '123456', 18, '初一1班', NULL);
INSERT INTO `students` VALUES (4, '李四', '123456', 12, '初一2班', NULL);
INSERT INTO `students` VALUES (5, '王五', '123456', 30, '初一3班', NULL);
INSERT INTO `students` VALUES (6, '赵六', '123456', 42, '初一4班', NULL);
INSERT INTO `students` VALUES (7, '钱七', '123456', 48, '初一5班', NULL);
INSERT INTO `students` VALUES (8, '孙八', '123456', 54, '初一6班', NULL);
INSERT INTO `students` VALUES (9, '周九', '123456', 60, '初一7班', NULL);
INSERT INTO `students` VALUES (10, '吴十', '123456', 18, '初一1班', NULL);
INSERT INTO `students` VALUES (11, '郑十一', '123456', 12, '初一2班', NULL);
INSERT INTO `students` VALUES (12, '王十二', '123456', 30, '初一3班', NULL);
INSERT INTO `students` VALUES (13, '赵十三', '123456', 42, '初一4班', NULL);
INSERT INTO `students` VALUES (14, '孙十四', '123456', 48, '初一5班', NULL);
INSERT INTO `students` VALUES (15, '李十五', '123456', 54, '初一6班', NULL);
INSERT INTO `students` VALUES (16, '周十六', '123456', 60, '初一7班', NULL);
INSERT INTO `students` VALUES (17, '吴十七', '123456', 18, '初一1班', NULL);
INSERT INTO `students` VALUES (18, '郑十八', '123456', 12, '初一2班', NULL);
INSERT INTO `students` VALUES (19, '王十九', '123456', 30, '初一3班', NULL);
INSERT INTO `students` VALUES (20, '赵二十', '123456', 42, '初一4班', NULL);
INSERT INTO `students` VALUES (21, '孙二十一', '123456', 48, '初一5班', NULL);
INSERT INTO `students` VALUES (22, '李二十二', '123456', 54, '初一6班', NULL);
INSERT INTO `students` VALUES (23, '张三', '123456', 18, '初一1班', NULL);
INSERT INTO `students` VALUES (24, '李四', '123456', 12, '初一2班', NULL);
INSERT INTO `students` VALUES (25, '王五', '123456', 30, '初一3班', NULL);
INSERT INTO `students` VALUES (26, '赵六', '123456', 42, '初一4班', NULL);
INSERT INTO `students` VALUES (27, '钱七', '123456', 48, '初一5班', NULL);
INSERT INTO `students` VALUES (28, '孙八', '123456', 54, '初一6班', NULL);
INSERT INTO `students` VALUES (29, '周九', '123456', 60, '初一7班', NULL);
INSERT INTO `students` VALUES (30, '吴十', '123456', 18, '初一1班', NULL);
INSERT INTO `students` VALUES (31, '郑十一', '123456', 12, '初一2班', NULL);
INSERT INTO `students` VALUES (32, '王十二', '123456', 30, '初一3班', NULL);
INSERT INTO `students` VALUES (33, '赵十三', '123456', 42, '初一4班', NULL);
INSERT INTO `students` VALUES (34, '孙十四', '123456', 48, '初一5班', NULL);
INSERT INTO `students` VALUES (35, '李十五', '123456', 54, '初一6班', NULL);
INSERT INTO `students` VALUES (36, '周十六', '123456', 60, '初一7班', NULL);
INSERT INTO `students` VALUES (37, '吴十七', '123456', 18, '初一1班', NULL);
INSERT INTO `students` VALUES (38, '郑十八', '123456', 12, '初一2班', NULL);
INSERT INTO `students` VALUES (39, '王十九', '123456', 30, '初一3班', NULL);
INSERT INTO `students` VALUES (40, '赵二十', '123456', 42, '初一4班', NULL);
INSERT INTO `students` VALUES (41, '孙二十一', '123456', 48, '初一5班', NULL);
INSERT INTO `students` VALUES (42, '李二十二', '123456', 54, '初一6班', NULL);
INSERT INTO `students` VALUES (43, '张三', '123456', 18, '初一1班', NULL);
INSERT INTO `students` VALUES (44, '李四', '123456', 12, '初一2班', NULL);
INSERT INTO `students` VALUES (45, '王五', '123456', 30, '初一3班', NULL);
INSERT INTO `students` VALUES (46, '赵六', '123456', 42, '初一4班', NULL);
INSERT INTO `students` VALUES (47, '钱七', '123456', 48, '初一5班', NULL);
INSERT INTO `students` VALUES (48, '孙八', '123456', 54, '初一6班', NULL);
INSERT INTO `students` VALUES (49, '周九', '123456', 60, '初一7班', NULL);
INSERT INTO `students` VALUES (50, '吴十', '123456', 18, '初一1班', NULL);
INSERT INTO `students` VALUES (51, '郑十一', '123456', 12, '初一2班', NULL);
INSERT INTO `students` VALUES (52, '王十二', '123456', 30, '初一3班', NULL);
INSERT INTO `students` VALUES (53, '赵十三', '123456', 42, '初一4班', NULL);
INSERT INTO `students` VALUES (54, '孙十四', '123456', 48, '初一5班', NULL);
INSERT INTO `students` VALUES (55, '李十五', '123456', 54, '初一6班', NULL);
INSERT INTO `students` VALUES (56, '周十六', '123456', 60, '初一7班', NULL);
INSERT INTO `students` VALUES (57, '吴十七', '123456', 18, '初一1班', NULL);
INSERT INTO `students` VALUES (58, '郑十八', '123456', 12, '初一2班', NULL);
INSERT INTO `students` VALUES (59, '王十九', '123456', 30, '初一3班', NULL);
INSERT INTO `students` VALUES (60, '赵二十', '123456', 42, '初一4班', NULL);
INSERT INTO `students` VALUES (61, '孙二十一', '123456', 48, '初一5班', NULL);
INSERT INTO `students` VALUES (62, '李二十二', '123456', 54, '初一6班', NULL);

-- ----------------------------
-- Table structure for workers
-- ----------------------------
DROP TABLE IF EXISTS `workers`;
CREATE TABLE `workers`  (
  `ID` int UNSIGNED NOT NULL,
  `Name` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `Password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '123456' COMMENT '密码',
  `Job` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职务',
  `Image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `CourseID` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '授课ID',
  `EntryDate` date NULL DEFAULT NULL COMMENT '任职日期',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `workers_courses_ID_fk`(`CourseID` ASC) USING BTREE,
  CONSTRAINT `workers_courses_ID_fk` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workers
-- ----------------------------
INSERT INTO `workers` VALUES (0, '马占山', '123456', '校长', NULL, NULL, '2013-04-18');
INSERT INTO `workers` VALUES (1, '刘麻子', '123456', '任课老师', NULL, 1, '2017-08-18');
INSERT INTO `workers` VALUES (2, '宝音', '123456', '班主任', NULL, 0, '1984-07-18');
INSERT INTO `workers` VALUES (3, '王悍马', '123456', '任课老师', NULL, 6, '2019-06-14');
INSERT INTO `workers` VALUES (4, '刘陶膘', '123456', '任课老师', NULL, 1, '2004-07-14');
INSERT INTO `workers` VALUES (5, '孟强', '123456', '班主任', NULL, 2, '2005-06-23');
INSERT INTO `workers` VALUES (6, '王汉庭', '123456', '班主任', NULL, 13, '2021-07-01');
INSERT INTO `workers` VALUES (7, '陶吴集', '123456', '任课老师', NULL, 5, '2013-04-16');
INSERT INTO `workers` VALUES (8, '张三', '123456', '管理员', NULL, NULL, '1965-01-01');
INSERT INTO `workers` VALUES (9, '李四', '123456', '任课老师', NULL, 1, '1966-02-02');
INSERT INTO `workers` VALUES (10, '王五', '123456', '任课老师', NULL, 2, '1967-03-03');
INSERT INTO `workers` VALUES (11, '赵六', '123456', '年级主任', NULL, 3, '1968-04-04');
INSERT INTO `workers` VALUES (12, '刘七', '123456', '班主任', NULL, 4, '1969-05-05');
INSERT INTO `workers` VALUES (13, '陈八', '123456', '任课老师', NULL, 5, '1970-06-06');
INSERT INTO `workers` VALUES (14, '张九', '123456', '任课老师', NULL, 6, '1971-07-07');
INSERT INTO `workers` VALUES (15, '李十', '123456', '任课老师', NULL, 7, '1972-08-08');
INSERT INTO `workers` VALUES (16, '王十一', '123456', '任课老师', NULL, 8, '1973-09-09');
INSERT INTO `workers` VALUES (17, '赵十二', '123456', '年级主任', NULL, 9, '1974-10-10');
INSERT INTO `workers` VALUES (18, '刘十三', '123456', '班主任', NULL, 10, '1975-11-11');
INSERT INTO `workers` VALUES (19, '陈十四', '123456', '任课老师', NULL, 11, '1976-12-12');
INSERT INTO `workers` VALUES (20, '张十五', '123456', '任课老师', NULL, 12, '1977-01-13');
INSERT INTO `workers` VALUES (21, '李十六', '123456', '任课老师', NULL, 13, '1978-02-14');
INSERT INTO `workers` VALUES (22, '王十七', '123456', '任课老师', NULL, 0, '1979-03-15');
INSERT INTO `workers` VALUES (23, '赵十八', '123456', '年级主任', NULL, 1, '1980-04-16');
INSERT INTO `workers` VALUES (24, '刘十九', '123456', '任课老师', NULL, 2, '1981-05-17');
INSERT INTO `workers` VALUES (25, '陈二十', '123456', '任课老师', NULL, 3, '1982-06-18');
INSERT INTO `workers` VALUES (26, '张二十一', '123456', '任课老师', NULL, 4, '1983-07-19');
INSERT INTO `workers` VALUES (27, '李二十二', '123456', '任课老师', NULL, 5, '1984-08-20');
INSERT INTO `workers` VALUES (28, '王二十三', '123456', '任课老师', NULL, 6, '1985-09-21');
INSERT INTO `workers` VALUES (29, '赵二十四', '123456', '年级主任', NULL, 7, '1986-10-22');
INSERT INTO `workers` VALUES (30, '刘二十五', '123456', '班主任', NULL, 8, '1987-11-23');
INSERT INTO `workers` VALUES (31, '陈二十六', '123456', '任课老师', NULL, 9, '1988-12-24');
INSERT INTO `workers` VALUES (32, '张二十七', '123456', '任课老师', NULL, 10, '1989-01-25');
INSERT INTO `workers` VALUES (33, '李二十八', '123456', '任课老师', NULL, 11, '1990-02-26');
INSERT INTO `workers` VALUES (34, '王二十九', '123456', '任课老师', NULL, 12, '1991-03-27');
INSERT INTO `workers` VALUES (35, '赵三十', '123456', '年级主任', NULL, 13, '1992-04-28');
INSERT INTO `workers` VALUES (36, '刘三十一', '123456', '任课老师', NULL, 0, '1993-05-29');
INSERT INTO `workers` VALUES (37, '陈三十二', '123456', '任课老师', NULL, 1, '1994-06-30');
INSERT INTO `workers` VALUES (38, '张三十三', '123456', '任课老师', NULL, 0, '1965-01-01');
INSERT INTO `workers` VALUES (39, '李三十四', '123456', '副校长', NULL, NULL, '1966-02-02');
INSERT INTO `workers` VALUES (40, '王三十五', '123456', '任课老师', NULL, 2, '1967-03-03');
INSERT INTO `workers` VALUES (41, '赵三十六', '123456', '年级主任', NULL, 3, '1968-04-04');
INSERT INTO `workers` VALUES (42, '钱三十七', '123456', '班主任', NULL, 4, '1969-05-05');
INSERT INTO `workers` VALUES (43, '孙三十八', '123456', '任课老师', NULL, 5, '1970-06-06');
INSERT INTO `workers` VALUES (44, '周三十九', '123456', '管理员', NULL, NULL, '1971-07-07');
INSERT INTO `workers` VALUES (45, '吴四十', '123456', '任课老师', NULL, 7, '1972-08-08');
INSERT INTO `workers` VALUES (46, '郑四十一', '123456', '任课老师', NULL, 8, '1973-09-09');
INSERT INTO `workers` VALUES (47, '王四十二', '123456', '年级主任', NULL, 9, '1974-10-10');
INSERT INTO `workers` VALUES (48, '赵四十三', '123456', '班主任', NULL, 10, '1975-11-11');
INSERT INTO `workers` VALUES (49, '钱四十四', '123456', '任课老师', NULL, 11, '1976-12-12');
INSERT INTO `workers` VALUES (50, '孙四十五', '123456', '任课老师', NULL, 12, '1977-01-13');
INSERT INTO `workers` VALUES (51, '周四十六', '123456', '任课老师', NULL, 13, '1978-02-14');
INSERT INTO `workers` VALUES (52, '吴四十七', '123456', '任课老师', NULL, 0, '1979-03-15');
INSERT INTO `workers` VALUES (53, '郑四十八', '123456', '年级主任', NULL, 1, '1980-04-16');
INSERT INTO `workers` VALUES (54, '王四十九', '123456', '班主任', NULL, 2, '1981-05-17');
INSERT INTO `workers` VALUES (55, '赵五十', '123456', '任课老师', NULL, 3, '1982-06-18');
INSERT INTO `workers` VALUES (56, '钱五十一', '123456', '任课老师', NULL, 4, '1983-07-19');
INSERT INTO `workers` VALUES (57, '孙五十二', '123456', '任课老师', NULL, 5, '1984-08-20');
INSERT INTO `workers` VALUES (58, '周五十三', '123456', '德育主任', NULL, NULL, '1985-09-21');
INSERT INTO `workers` VALUES (59, '吴五十四', '123456', '年级主任', NULL, 7, '1986-10-22');
INSERT INTO `workers` VALUES (60, '郑五十五', '123456', '班主任', NULL, 8, '1987-11-23');
INSERT INTO `workers` VALUES (61, '王五十六', '123456', '任课老师', NULL, 9, '1988-12-24');
INSERT INTO `workers` VALUES (62, '赵五十七', '123456', '任课老师', NULL, 10, '1989-01-25');
INSERT INTO `workers` VALUES (63, '钱五十八', '123456', '任课老师', NULL, 11, '1990-02-26');
INSERT INTO `workers` VALUES (64, '孙五十九', '123456', '任课老师', NULL, 12, '1991-03-27');
INSERT INTO `workers` VALUES (65, '周六十', '123456', '年级主任', NULL, 13, '1992-04-28');
INSERT INTO `workers` VALUES (66, '吴六十一', '123456', '任课老师', NULL, 0, '1993-05-29');

SET FOREIGN_KEY_CHECKS = 1;
