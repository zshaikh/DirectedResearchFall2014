.class Ldolphin/preference/am;
.super Ljava/lang/Object;
.source "SingleChoiceGroupPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ldolphin/preference/SingleChoiceGroupPreference;


# direct methods
.method constructor <init>(Ldolphin/preference/SingleChoiceGroupPreference;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Ldolphin/preference/am;->a:Ldolphin/preference/SingleChoiceGroupPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Ldolphin/preference/am;->a:Ldolphin/preference/SingleChoiceGroupPreference;

    iget-object v0, v0, Ldolphin/preference/SingleChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Ldolphin/preference/am;->a:Ldolphin/preference/SingleChoiceGroupPreference;

    invoke-virtual {v1, v0}, Ldolphin/preference/SingleChoiceGroupPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Ldolphin/preference/am;->a:Ldolphin/preference/SingleChoiceGroupPreference;

    invoke-virtual {v1, v0}, Ldolphin/preference/SingleChoiceGroupPreference;->a(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Ldolphin/preference/am;->a:Ldolphin/preference/SingleChoiceGroupPreference;

    iget-object v1, p0, Ldolphin/preference/am;->a:Ldolphin/preference/SingleChoiceGroupPreference;

    invoke-static {v1}, Ldolphin/preference/SingleChoiceGroupPreference;->a(Ldolphin/preference/SingleChoiceGroupPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/preference/SingleChoiceGroupPreference;->persistString(Ljava/lang/String;)Z

    .line 77
    :cond_0
    return-void
.end method
