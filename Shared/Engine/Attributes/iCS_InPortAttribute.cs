using System;

[AttributeUsage(AttributeTargets.Field | AttributeTargets.Class)]
public class iCS_InPortAttribute : Attribute {
    // ======================================================================
    // Optional Parameters
    // ----------------------------------------------------------------------
    public string Name {
        get { return myName; }
        set { myName= value; }
    }
    private string myName= null;

    // ======================================================================
    public override string ToString() { return "iCS_InPort"; }
}
