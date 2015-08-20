using UnityEngine;
using System.Collections;
using UnityEditor;

[InitializeOnLoad]
public class AutomationInit : MonoBehaviour {

	static AutomationInit()
	{
		Debug.Log ("Building Assets ....");
		BuildPipeline.BuildAssetBundles ("Assets/AssetBundles");
	}



	// Use this for initialization
	void Start () {
		//http://stackoverflow.com/questions/24032636/how-to-build-assetbundle-without-using-selection

	}
	
	// Update is called once per frame
	void Update () {
	
	}
	


}
