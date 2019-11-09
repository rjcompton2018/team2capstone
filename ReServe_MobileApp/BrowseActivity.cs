using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace ReServe_App
{
    [Activity(Label = "BrowseActivity")]
    public class BrowseActivity : ListActivity
    {

        Context mContext;
        LinearLayout layoutMain;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.activity_browse);
            mContext = this;
            layoutMain = FindViewById(Resource.id.layoutMain);
        }
    }
}

//public class BrowseActivity extends AppCompatActivity
//{

//    Context mContext;
//    LinearLayout layoutMain;

//    @Override
//    protected void onCreate(Bundle savedInstanceState)
//{
//    super.onCreate(savedInstanceState);
//    setContentView(R.layout.activity_browse);
//    mContext = this;
//    layoutMain = findViewById(R.id.layoutMain);
//}
//}