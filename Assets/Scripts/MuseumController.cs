using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class MuseumController : MonoBehaviour
{
    public Button goTobutton;

    public string scenename;
    // Start is called before the first frame update
    void Start()
    {
        goTobutton.onClick.AddListener(goTo);
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void goTo(){
        SceneManager.LoadScene(scenename);
    }
}
