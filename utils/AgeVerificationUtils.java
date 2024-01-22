package com.seveneleven.rishost.ageverification.utils;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;

public final class AgeVerificationUtils {
    //checking a cell is has a value or not
    public static boolean isCellEmpty(Cell cell) {
        if (cell == null) {
            return true;
        }

        if (cell.getCellType() == CellType.BLANK) {
            return true;
        }

        if (cell.getCellType() == CellType.STRING && cell.getStringCellValue().trim().isEmpty()) {
            return true;
        }
        return false;
    }
}
