
using CommunityToolkit.Maui.Behaviors;
using DietGPT.ViewModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace DietGPT.View;

public partial class TabHeader : ContentView
{
    // static TabHeaderVM VM;

    // Make BindableProperty handlers instance-specific
    public static readonly BindableProperty imageNameProperty = BindableProperty.Create(
        nameof(ImageName),
        typeof(string),
        typeof(TabHeader),
        string.Empty,
        propertyChanged: OnImageNameChangedStatic
    );

    private static void OnImageNameChangedStatic(BindableObject bindable, object oldValue, object newValue)
    {
        // This is a static method, but we call the instance method below
        var control = (TabHeader)bindable;
        control.OnImageNameChanged(oldValue, newValue);
    }

    private void OnImageNameChanged(object oldValue, object newValue)
    {
        this.TabImage.Source = (string)newValue;
    }

    public string ImageName
    {
        get => (string)GetValue(TabHeader.imageNameProperty);
        set { 
            SetValue(TabHeader.imageNameProperty, value);
        }
    }



    public static readonly BindableProperty selectedIDProperty = BindableProperty.Create(nameof(selectedID), typeof(string), typeof(string), string.Empty, propertyChanged: OnSelectedIDChangedStatic);
    private static void OnSelectedIDChangedStatic(BindableObject bindable, object oldValue, object newValue)
    {
        var control = (TabHeader)bindable;
        control.OnSelectedIDChanged(oldValue, newValue);
    }
    private void OnSelectedIDChanged(object oldValue, object newValue)
    {
        var behavs = this.TabImage.Behaviors;
        foreach (var behavior in behavs)
        {
            if (behavior.GetType() != typeof(IconTintColorBehavior)) continue;
            var colorBahav = (IconTintColorBehavior)behavior;
            if (selectedID == ID)
                colorBahav.TintColor = Microsoft.Maui.Graphics.Colors.Purple;
            else
                colorBahav.TintColor = Microsoft.Maui.Graphics.Colors.White;
        }
    }
    public string selectedID
    {
        get => (string)GetValue(TabHeader.selectedIDProperty);
        set => SetValue(TabHeader.selectedIDProperty, value);
    }

    public static readonly BindableProperty IDProperty = BindableProperty.Create(nameof(ID), typeof(string), typeof(string), string.Empty);

    public string ID
    {
        get => (string)GetValue(TabHeader.IDProperty);
        set => SetValue(TabHeader.IDProperty, value);
    }



    public TabHeader()
	{
		InitializeComponent();
    }
}