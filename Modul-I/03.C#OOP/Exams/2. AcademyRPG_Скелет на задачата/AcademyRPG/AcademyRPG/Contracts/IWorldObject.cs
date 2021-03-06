﻿using AcademyRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AcademyRPG.Contracts
{
    public interface IWorldObject
    {
        bool IsDestroyed
        {
            get;
        }

        int HitPoints
        {
            get;
            set;
        }

        Point Position
        {
            get;
        }
    }
}
