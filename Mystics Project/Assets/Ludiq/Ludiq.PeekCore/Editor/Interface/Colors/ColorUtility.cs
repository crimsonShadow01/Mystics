﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Ludiq.PeekCore
{
    public static class ColorUtility
    {
        static ColorUtility()
        {
            pixels = new Dictionary<Color, Texture2D>();
        }

        private static readonly Dictionary<Color, Texture2D> pixels;

        public static Color Gray(float brightness)
        {
            return new Color(brightness, brightness, brightness);
        }

        public static Color WithAlpha(this Color color, float alpha)
        {
            color.a = alpha;
            return color;
        }

        public static Color WithAlphaMultiplied(this Color color, float alphaMultiplier)
        {
            color.a *= alphaMultiplier;
            return color;
        }

        public static Texture2D GetPixel(this Color color)
        {
            if (!pixels.ContainsKey(color))
            {
                var pixel = new Texture2D(1, 1, TextureFormat.ARGB32, false, LudiqGUIUtility.createLinearTextures);
                pixel.SetPixel(0, 0, color);
                pixel.hideFlags = HideFlags.HideAndDontSave;
                pixel.filterMode = FilterMode.Point;
                pixel.Apply();
                pixels.Add(color, pixel);
            }

            return pixels[color];
        }

        public static Texture2D GetPixel(this SkinnedColor skinnedColor)
        {
            return skinnedColor.color.GetPixel();
        }

        public static Texture2D CreateBox(Color fill, Color border)
        {
            var box = new Texture2D(3, 3, TextureFormat.ARGB32, false, LudiqGUIUtility.createLinearTextures);

            for (var i = 0; i < 3; i++)
            {
                for (var j = 0; j < 3; j++)
                {
                    box.SetPixel(i, j, border);
                }
            }

            box.SetPixel(1, 1, fill);
            box.hideFlags = HideFlags.HideAndDontSave;
            box.filterMode = FilterMode.Point;
            box.Apply();
            return box;
        }

        public static Texture2D CreateRetinaBox(Color fill, Color border)
        {
            var box = new Texture2D(6, 6, TextureFormat.ARGB32, false, LudiqGUIUtility.createLinearTextures);

            for (var i = 0; i < 6; i++)
            {
                for (var j = 0; j < 6; j++)
                {
                    box.SetPixel(i, j, border);
                }
            }

            for (var i = 1; i < 5; i++)
            {
                for (var j = 1; j < 5; j++)
                {
                    box.SetPixel(i, j, fill);
                }
            }

            box.hideFlags = HideFlags.HideAndDontSave;
            box.filterMode = FilterMode.Point;
            box.Apply();
            return box;
        }

        public static GUIStyle CreateBackground(this Color color)
        {
            var background = new GUIStyle();
            background.normal.background = color.GetPixel();
            return background;
        }

        public static GUIStyle CreateBackground(this SkinnedColor skinnedColor)
        {
            return skinnedColor.color.CreateBackground();
        }

        public static SkinnedColor Color(this Type type)
        {
            if (type == null)
            {
                return new Color(0.8f, 0.8f, 0.8f);
            }

            if (type == typeof(string))
            {
                return ColorPalette.orange;
            }

            if (type == typeof(bool))
            {
                return ColorPalette.purple;
            }

            if (type == typeof(char))
            {
                return ColorPalette.yellow;
            }

            if (type.IsEnum)
            {
                return ColorPalette.pink;
            }

            if (type.IsNumeric())
            {
                return ColorPalette.blue;
            }

            if (type.IsNumericConstruct())
            {
                return ColorPalette.teal;
            }

            if (type == typeof(Coroutine) || type == typeof(IEnumerator) || type.IsDelegate())
            {
                return UnityEngine.Color.white;
            }

            return ColorPalette.green;
        }
    }
}