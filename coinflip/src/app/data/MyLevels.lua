--
-- Author: li
-- Date: 2016-07-01 17:49:40
--

local Levels = {}

Levels.NODE_IS_WHITE  = 1
Levels.NODE_IS_BLACK  = 0
Levels.NODE_IS_EMPTY  = "X"

local levelsData = {}

levelsData[1] = {
    rows = 8,
    cols = 8,
    grid = {

    	{1, 1, 1, 1,1, 1, 1, 1},
    	{1, 1, 1, 1,1, 1, 1, 1},
    	{1, 1, 1, 1,1, 1, 1, 1},
		{1, 1, 1, 1,1, 1, 1, 1},
		{1, 1, 1, 1,1, 1, 1, 1},
        {1, 1, 1, 1,1, 1, 1, 1},
        {1, 1, 1, 1,1, 1, 1, 1},
        {1, 1, 1, 1,1, 1, 1, 1}
    }
}

levelsData[2] = {
    rows = 10,
    cols = 10,
    grid = {
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
       	{1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
      	{1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    }
}

levelsData[3] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 0, 0, 0},
        {0, 1, 1, 0},
        {0, 1, 1, 0},
        {0, 0, 0, 0}
    }
}

levelsData[4] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 1, 1},
        {1, 0, 0, 1},
        {1, 0, 1, 1},
        {1, 1, 1, 1}
    }
}

levelsData[5] = {
    rows = 4,
    cols = 4,
    grid = {
        {1, 0, 0, 1},
        {0, 0, 0, 0},
        {0, 0, 0, 0},
        {1, 0, 0, 1}
    }
}

levelsData[6] = {
    rows = 4,
    cols = 4,
    grid = {
        {1, 0, 0, 1},
        {0, 1, 1, 0},
        {0, 1, 1, 0},
        {1, 0, 0, 1}
    }
}

levelsData[7] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 1, 1},
        {1, 0, 1, 1},
        {1, 1, 0, 1},
        {1, 1, 1, 0}
    }
}

levelsData[8] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 0, 1},
        {1, 0, 0, 0},
        {0, 0, 0, 1},
        {1, 0, 1, 0}
    }
}

levelsData[9] = {
    rows = 4,
    cols = 4,
    grid = {
        {1, 0, 1, 0},
        {1, 0, 1, 0},
        {0, 0, 1, 0},
        {1, 0, 0, 1}
    }
}

levelsData[10] = {
    rows = 4,
    cols = 4,
    grid = {
        {1, 0, 1, 1},
        {1, 1, 0, 0},
        {0, 0, 1, 1},
        {1, 1, 0, 1}
    }
}

levelsData[11] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 1, 0},
        {1, 0, 0, 1},
        {1, 0, 0, 1},
        {0, 1, 1, 0}
    }
}

levelsData[12] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 1, 0},
        {0, 0, 0, 0},
        {1, 1, 1, 1},
        {0, 0, 0, 0}
    }
}

levelsData[13] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 1, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0},
        {0, 1, 1, 0}
    }
}

levelsData[14] = {
    rows = 4,
    cols = 4,
    grid = {
        {1, 0, 1, 1},
        {0, 1, 0, 1},
        {1, 0, 1, 0},
        {1, 1, 0, 1}
    }
}

levelsData[15] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 0, 1},
        {1, 0, 0, 0},
        {1, 0, 0, 0},
        {0, 1, 0, 1}
    }
}

levelsData[16] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 1, 0},
        {1, 1, 1, 1},
        {1, 1, 1, 1},
        {0, 1, 1, 0}
    }
}

levelsData[17] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 1, 1},
        {0, 1, 0, 0},
        {0, 0, 1, 0},
        {1, 1, 1, 0}
    }
}

levelsData[18] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 0, 0, 1},
        {0, 0, 1, 0},
        {0, 1, 0, 0},
        {1, 0, 0, 0}
    }
}

levelsData[19] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 1, 0, 0},
        {0, 1, 1, 0},
        {0, 0, 1, 1},
        {0, 0, 0, 0}
    }
}

levelsData[20] = {
    rows = 4,
    cols = 4,
    grid = {
        {0, 0, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    }
}

levelsData[21] = {
    rows = 4,
    cols = 5,
    grid = {
        {0, 0, 0, 0, 1},
        {1, 1, 0, 0, 0},
        {0, 0, 0, 1, 1},
        {1, 0, 0, 0, 0}
    }
}

levelsData[22] = {
    rows = 4,
    cols = 5,
    grid = {
        {0, 0, 1, 0, 1},
        {1, 1, 1, 0, 1},
        {1, 0, 1, 1, 1},
        {1, 0, 1, 0, 0}
    }
}

levelsData[23] = {
    rows = 4,
    cols = 5,
    grid = {
        {1, 1, 0, 0, 1},
        {0, 0, 1, 0, 1},
        {1, 0, 1, 0, 0},
        {1, 0, 0, 1, 1}
    }
}

levelsData[24] = {
    rows = 4,
    cols = 5,
    grid = {
        {1, 1, 1, 0, 1},
        {0, 1, 0, 1, 1},
        {1, 1, 1, 1, 0},
        {1, 0, 1, 1, 1}
    }
}

levelsData[25] = {
    rows = 4,
    cols = 5,
    grid = {
        {1, 1, 1, 1, 1},
        {1, 0, 1, 1, 1},
        {1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1}
    }
}

levelsData[26] = {
    rows = 4,
    cols = 5,
    grid = {
        {0, 1, 1, 1, 0},
        {1, 0, 1, 0, 1},
        {1, 1, 1, 1, 1},
        {0, 0, 1, 0, 0}
    }
}

levelsData[27] = {
    rows = 4,
    cols = 5,
    grid = {
        {0, 1, 1, 1, 1},
        {0, 0, 0, 1, 1},
        {1, 1, 0, 0, 0},
        {1, 1, 1, 1, 0}
    }
}

levelsData[28] = {
    rows = 4,
    cols = 5,
    grid = {
        {0, 1, 0, 0, 1},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 1, 0, 0, 1}
    }
}

levelsData[29] = {
    rows = 4,
    cols = 5,
    grid = {
        {0, 1, 0, 0, 1},
        {1, 1, 1, 1, 0},
        {1, 1, 1, 1, 0},
        {0, 1, 0, 0, 1}
    }
}

-- levelsData[30] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {1, 1, 1, 1, 1},
--         {1, 1, 0, 0, 1},
--         {1, 0, 0, 1, 1},
--         {1, 1, 1, 1, 1}
--     }
-- }

-- levelsData[31] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {1, 0, 0, 0, 1},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1}
--     }
-- }

-- levelsData[32] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {0, 0, 1, 0, 0},
--         {1, 1, 1, 0, 0},
--         {0, 0, 1, 1, 1},
--         {0, 0, 1, 0, 0}
--     }
-- }

-- levelsData[33] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {0, 0, 1, 1, 0},
--         {0, 0, 0, 0, 1},
--         {1, 0, 0, 0, 0},
--         {0, 1, 1, 0, 0}
--     }
-- }

-- levelsData[34] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {0, 0, 1, 0, 0},
--         {0, 0, 1, 0, 0},
--         {0, 0, 0, 0, 0}
--     }
-- }

-- levelsData[35] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {0, 0, 1, 0, 0},
--         {1, 1, 0, 1, 1},
--         {1, 1, 0, 1, 1},
--         {0, 0, 1, 0, 0}
--     }
-- }

-- levelsData[36] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 1},
--         {0, 0, 0, 1, 0},
--         {0, 1, 0, 0, 0},
--         {1, 0, 0, 0, 0}
--     }
-- }

-- levelsData[37] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {1, 1, 0, 1, 0},
--         {0, 0, 0, 0, 1},
--         {1, 0, 0, 0, 0},
--         {0, 1, 0, 1, 1}
--     }
-- }

-- levelsData[38] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {1, 0, 1, 1, 0},
--         {1, 0, 0, 0, 0},
--         {0, 0, 0, 0, 1},
--         {0, 1, 1, 0, 1}
--     }
-- }

-- levelsData[39] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {0, 1, 0, 1, 0},
--         {0, 0, 0, 0, 0},
--         {0, 1, 0, 0, 1},
--         {0, 0, 0, 0, 0}
--     }
-- }

-- levelsData[40] = {
--     rows = 4,
--     cols = 5,
--     grid = {
--         {0, 0, 1, 0, 0},
--         {0, 1, 0, 1, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0}
--     }
-- }

-- levelsData[41] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 1, 1, 1, 0},
--         {1, 1, 0, 0, 1},
--         {1, 0, 1, 0, 1},
--         {1, 0, 0, 1, 1},
--         {0, 1, 1, 1, 1}
--     }
-- }

-- levelsData[42] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 1, 0, 0, 1},
--         {1, 0, 1, 0, 1},
--         {0, 0, 0, 0, 0},
--         {1, 0, 1, 0, 1},
--         {1, 0, 0, 1, 1}
--     }
-- }

-- levelsData[43] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 1, 1, 1, 0},
--         {1, 0, 0, 0, 1},
--         {1, 0, 0, 0, 1},
--         {1, 0, 0, 0, 1},
--         {0, 1, 1, 1, 0}
--     }
-- }

-- levelsData[44] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 0, 0, 1, 0},
--         {0, 1, 1, 1, 1},
--         {0, 1, 0, 1, 0},
--         {1, 1, 1, 1, 0},
--         {0, 1, 0, 0, 1}
--     }
-- }

-- levelsData[45] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 1, 0, 1, 0},
--         {1, 0, 1, 1, 1},
--         {0, 1, 0, 0, 1},
--         {1, 1, 0, 0, 1},
--         {0, 1, 1, 1, 0}
--     }
-- }

-- levelsData[46] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 1, 0, 1, 0},
--         {0, 1, 1, 1, 0},
--         {1, 0, 0, 0, 1},
--         {0, 1, 1, 1, 0},
--         {0, 1, 0, 1, 0}
--     }
-- }

-- levelsData[47] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 1, 1},
--         {0, 1, 0, 1, 1},
--         {0, 0, 1, 0, 0},
--         {1, 1, 0, 1, 0},
--         {1, 1, 0, 0, 0}
--     }
-- }

-- levelsData[48] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {0, 0, 1, 0, 0},
--         {0, 1, 0, 1, 0},
--         {0, 0, 1, 0, 0},
--         {0, 0, 0, 0, 0}
--     }
-- }

-- levelsData[49] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 0, 1, 0, 1},
--         {1, 0, 1, 0, 1},
--         {0, 0, 1, 0, 0},
--         {1, 0, 1, 0, 1},
--         {1, 0, 1, 0, 1}
--     }
-- }

-- levelsData[50] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 1, 1, 1, 0},
--         {0, 0, 0, 0, 0},
--         {0, 1, 0, 1, 0},
--         {0, 0, 0, 0, 0},
--         {0, 1, 1, 1, 0}
--     }
-- }

-- levelsData[51] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 1, 1, 1, 0},
--         {1, 0, 0, 0, 1},
--         {1, 0, 1, 0, 1},
--         {1, 0, 0, 0, 1},
--         {0, 1, 1, 1, 1}
--     }
-- }

-- levelsData[52] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 0, 0, 1, 0},
--         {0, 1, 1, 1, 1},
--         {0, 1, 0, 1, 0},
--         {1, 1, 1, 1, 0},
--         {0, 1, 0, 0, 1}
--     }
-- }

-- levelsData[53] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 0, 0, 0, 0},
--         {1, 1, 0, 0, 0},
--         {1, 0, 1, 0, 1},
--         {0, 0, 0, 1, 1},
--         {0, 0, 0, 0, 1}
--     }
-- }

-- levelsData[54] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 1, 1},
--         {0, 0, 0, 0, 0},
--         {0, 1, 0, 1, 0},
--         {0, 0, 0, 0, 0},
--         {1, 1, 0, 0, 0}
--     }
-- }

-- levelsData[55] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 0, 1, 0, 1},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1},
--         {0, 0, 0, 0, 0},
--         {1, 0, 1, 0, 1}
--     }
-- }

-- levelsData[56] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {0, 0, 1, 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1},
--         {0, 0, 1, 0, 0}
--     }
-- }

-- levelsData[57] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 1},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 0}
--     }
-- }

-- levelsData[58] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 1, 1, 1, 0},
--         {1, 0, 0, 0, 1},
--         {1, 0, 0, 0, 1},
--         {1, 0, 0, 0, 1},
--         {0, 1, 1, 1, 0}
--     }
-- }

-- levelsData[59] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 1, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 1, 0, 1, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 1, 1}
--     }
-- }

-- levelsData[60] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 1, 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0}
--     }
-- }

-- levelsData[61] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 1, 1, 1, 0},
--         {0, 1, 0, 1, 0},
--         {0, 1, 1, 1, 0},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[62] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 1, 1, 1, "X"},
--         {1, 0, 0, 0, 1},
--         {1, 0, 0, 0, 1},
--         {1, 0, 0, 0, 1},
--         {"X", 1, 1, 1, "X"}
--     }
-- }

-- levelsData[63] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 1, 1, "X"},
--         {0, 1, 0, 1, 1},
--         {1, 0, 1, 0, 1},
--         {1, 1, 0, 1, 0},
--         {"X", 1, 1, 0, "X"}
--     }
-- }

-- levelsData[64] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 1, "X"},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1},
--         {0, 0, 0, 0, 0},
--         {"X", 1, 0, 0, "X"}
--     }
-- }

-- levelsData[65] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {1, 0, 1, 0, 0},
--         {1, 1, 0, 1, 1},
--         {0, 0, 1, 0, 1},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[66] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 1, 1, 1, "X"},
--         {1, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 1},
--         {"X", 1, 1, 1, "X"}
--     }
-- }

-- levelsData[67] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 1, 0, 1, "X"},
--         {0, 0, 0, 0, 0},
--         {1, 1, 1, 1, 1},
--         {0, 0, 0, 0, 0},
--         {"X", 1, 0, 1, "X"}
--     }
-- }

-- levelsData[68] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 0, 1, 0, 1},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 0},
--         {"X", 0, 0, 1, "X"}
--     }
-- }

-- levelsData[69] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 1, 0, 1, "X"},
--         {1, 0, 0, 0, 1},
--         {0, 0, 1, 0, 0},
--         {1, 0, 0, 0, 1},
--         {"X", 1, 0, 1, "X"}
--     }
-- }

-- levelsData[70] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 1, "X"},
--         {0, 0, 1, 0, 1},
--         {0, 0, 0, 1, 0},
--         {0, 0, 1, 0, 1},
--         {"X", 0, 0, 1, "X"}
--     }
-- }

-- levelsData[71] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 0, 1, 1, 1},
--         {0, 0, 0, 0, 0},
--         {1, 1, 1, 0, 0},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[72] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {1, 0, 1, 0, 1},
--         {1, 0, 0, 0, 1},
--         {1, 0, 1, 0, 1},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[73] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 1, 0, 0, "X"},
--         {0, 0, 0, 1, 0},
--         {1, 0, 0, 0, 1},
--         {0, 1, 0, 0, 0},
--         {"X", 0, 0, 1, "X"}
--     }
-- }

-- levelsData[74] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[75] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 1, 0, 1, 0},
--         {1, 1, 0, 1, 1},
--         {0, 0, 0, 0, 0},
--         {"X", 1, 0, 1, "X"}
--     }
-- }

-- levelsData[76] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 1, "X"},
--         {0, 0, 1, 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 1, 0, 0},
--         {"X", 0, 0, 1, "X"}
--     }
-- }

-- levelsData[77] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 1, 1, 1, 0},
--         {0, 1, 0, 1, 0},
--         {0, 0, 1, 0, 0},
--         {"X", 1, 0, 1, "X"}
--     }
-- }

-- levelsData[78] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 1, 0, "X"},
--         {0, 1, 0, 0, 0},
--         {1, 0, 0, 0, 0},
--         {0, 0, 0, 0, 1},
--         {"X", 0, 0, 1, "X"}
--     }
-- }

-- levelsData[79] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 1, 0, 1, "X"},
--         {1, 0, 0, 0, 1},
--         {1, 0, 0, 0, 1},
--         {0, 0, 0, 0, 0},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[80] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 0, 0, 0, 0},
--         {0, 0, 1, 0, 0},
--         {0, 0, 0, 0, 0},
--         {"X", 1, 0, 1, "X"}
--     }
-- }

-- levelsData[81] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {1, 0, 1, 0, 1},
--         {0, 0, 1, 0, 0},
--         {0, 0, 0, 0, 0},
--         {"X", 1, 0, 0, "X"}
--     }
-- }

-- levelsData[82] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 1, 1, 0, 0},
--         {0, 0, 0, 1, 0},
--         {0, 0, 0, 1, 0},
--         {"X", 0, 0, 1, "X"}
--     }
-- }

-- levelsData[83] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 1, "X"},
--         {1, 0, 0, 0, 1},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {"X", 0, 0, 1, "X"}
--     }
-- }

-- levelsData[84] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 0, 0, 0, 0},
--         {0, 1, 0, 1, 0},
--         {1, 0, 0, 0, 1},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[85] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {0, 1, 0, 1, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {"X", 1, 0, 1, "X"}
--     }
-- }

-- levelsData[86] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 1, 0, "X"},
--         {0, 0, 1, 0, 1},
--         {0, 1, 0, 1, 0},
--         {1, 0, 1, 0, 0},
--         {"X", 0, 0, 1, "X"}
--     }
-- }

-- levelsData[87] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 1, 0, 0, "X"},
--         {0, 0, 0, 0, 0},
--         {0, 1, 0, 1, 0},
--         {0, 0, 0, 1, 0},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[88] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 1, 0, "X"},
--         {0, 0, 0, 0, 1},
--         {0, 1, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {"X", 0, 0, 1, "X"}
--     }
-- }

-- levelsData[89] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 1, 0, "X"},
--         {0, 0, 1, 0, 1},
--         {0, 0, 0, 0, 1},
--         {0, 0, 0, 0, 0},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[90] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {"X", 0, 0, 0, "X"},
--         {1, 1, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 1, 0, 0, 0},
--         {"X", 0, 0, 0, "X"}
--     }
-- }

-- levelsData[91] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 0}
--     }
-- }

-- levelsData[92] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {0, 1, 0, 1, 0},
--         {0, 0, "X", 0, 0},
--         {0, 1, 0, 1, 0},
--         {0, 0, 0, 0, 0}
--     }
-- }

-- levelsData[93] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 1, 0, 1},
--         {0, 0, 0, 1, 0},
--         {0, 1, "X", 1, 0},
--         {0, 1, 0, 0, 0},
--         {1, 0, 1, 0, 0}
--     }
-- }

-- levelsData[94] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 0, 0, 0, 1},
--         {0, 0, 0, 0, 0},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1}
--     }
-- }

-- levelsData[95] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {0, 0, 1, 0, 0},
--         {0, 0, "X", 0, 0},
--         {0, 0, 1, 0, 0},
--         {0, 0, 0, 0, 0}
--     }
-- }

-- levelsData[96] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 1, 0},
--         {0, 1, 0, 0, 0},
--         {0, 0, "X", 0, 0},
--         {1, 0, 0, 1, 1},
--         {0, 0, 0, 1, 0}
--     }
-- }

-- levelsData[97] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 1, 0},
--         {1, 0, 0, 0, 0},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, 0, 0, 1}
--     }
-- }

-- levelsData[98] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {1, 0, 0, 0, 0},
--         {0, 0, 1, 0, 0},
--         {0, 1, "X", 1, 0},
--         {0, 0, 1, 0, 0},
--         {0, 0, 0, 0, 1}
--     }
-- }

-- levelsData[99] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 1, 1, 1, 0},
--         {0, 0, 0, 0, 0},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {0, 1, 1, 1, 0}
--     }
-- }

-- levelsData[100] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1}
--     }
-- }


-- levelsData[101] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1}
--     }
-- }


-- levelsData[102] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1}
--     }
-- }


-- levelsData[103] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1}
--     }
-- }

-- levelsData[104] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1}
--     }
-- }

-- levelsData[105] = {
--     rows = 5,
--     cols = 5,
--     grid = {
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1},
--         {0, 0, "X", 0, 0},
--         {0, 0, 0, 0, 0},
--         {1, 0, 0, 0, 1}
--     }
-- }
function Levels.numLevels()
    return #levelsData
end

function Levels.get(levelIndex)
    assert(levelIndex >= 1 and levelIndex <= #levelsData, string.format("levelsData.get() - invalid levelIndex %s", tostring(levelIndex)))
    return clone(levelsData[levelIndex])
end

return Levels
