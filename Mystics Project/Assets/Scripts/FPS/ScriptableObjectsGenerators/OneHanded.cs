using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Com.CBStudios.Mystics
{
    [CreateAssetMenu(fileName = "New Weapon", menuName = "Weapon")]
    public class OneHanded : ScriptableObject
    {
        public string name;
        public float swingrate;
        public GameObject prefab;

    }
}
