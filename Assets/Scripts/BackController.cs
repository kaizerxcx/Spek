using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class BackController : MonoBehaviour
{
    public Button backButton;

    public string backscene;
    // Start is called before the first frame update
    void Start()
    {

        backButton.onClick.AddListener(goTo);
    }

    // Update is called once per frame
    void Update()
    {
        if (Application.platform == RuntimePlatform.Android)
        {
            if (Input.GetKey(KeyCode.Escape))
            {
                // Insert Code Here (I.E. Load Scene, Etc)
                // OR Application.Quit();
                Application.Quit();
                return;
            }
        }
    }

    public void goTo()
    {
        if (backscene.Equals("homeMuseum"))
        {
            Application.Quit();
        }
        else
            SceneManager.LoadScene(backscene);
    }
}
