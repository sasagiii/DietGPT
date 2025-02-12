using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Threading.Tasks;

namespace DietGPT.Model
{
    public class MicroMacroResults
    {
        public static MicroMacroResults ExempleObject()
        {
            //oat recipe results
            //Calories: 563 calories
            //Total Weight: 340g
            //Calories per 100g: 165 calories
            //Macronutrients
            //Protein: 14g
            //Carbohydrates: 65g
            //Sugars: 24g
            //Fiber: 8g
            //Fat: 30g
            //Saturated Fat: 7g
            //Micronutrients
            //Calcium: 250mg
            //Vitamin C: 10mg
            //Vitamin A: 180 IU
            //Potassium: 550mg
            //Iron: 3mg

            MicroMacroResults result = new MicroMacroResults();
            result.Cal = "12";
            result.Weight = "340";
            result.Calper100g = "165";
            result.Protein = "14";
            result.Carbs = "65";
            result.Sugar = "24";
            result.Fiber = "8";
            result.Fat = "30";
            result.SaturatedFat = "7";
            result.Calcium = "250";
            result.VitC = "10";
            result.VitA = "180";
            result.Potassium = "550";
            result.Iron = "3";

            return result;
        }

        // base
        public string Cal { get; set; }
        public string Weight { get; set; }
        public string Calper100g { get; set; }

        //Macronutrients
        public string Protein { get; set; }
        public string Carbs { get; set; }
        public string Fat { get; set; }

        public string Sugar { get; set; }
        public string Fiber { get; set; }
        public string SaturatedFat { get; set; }

        //Micronutrients
        public string Calcium { get; set; }
        public string VitC { get; set; }
        public string VitA { get; set; }

        public string Potassium { get; set; }
        public string Iron { get; set; }
    }
}
