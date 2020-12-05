using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Com.CBStudios.Mystics
{
    public class Weapons : MonoBehaviour
    {
        public OneHanded[] loadout;
        public Transform weaponParent;

        private GameObject currentWeapon;



        void Update()
        {
            if (Input.GetKeyDown(KeyCode.Alpha1)) Equip(0);
        }

        void Equip(int p_ind)
        {
            if (currentWeapon != null) Destroy(currentWeapon);

            GameObject t_newWeapon = Instantiate(loadout[p_ind].prefab, weaponParent.position, weaponParent.rotation, weaponParent) as GameObject;
            t_newWeapon.transform.localPosition = Vector3.zero;
            t_newWeapon.transform.localEulerAngles = Vector3.zero;

            currentWeapon = t_newWeapon;
        }
    }
}
