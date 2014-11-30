.class public Ldolphin/preference/ExpandablePreferenceScreen;
.super Ldolphin/preference/PreferenceScreen;
.source "ExpandablePreferenceScreen.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private a:Landroid/widget/ExpandableListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ldolphin/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceScreen;->a:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceScreen;->b()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/ExpandablePreferenceScreen;->a:Landroid/widget/ExpandableListAdapter;

    .line 30
    :cond_0
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceScreen;->a:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public a(Landroid/widget/ExpandableListView;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 52
    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 53
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceScreen;->a()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 54
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceScreen;->onAttachedToActivity()V

    .line 56
    return-void
.end method

.method public a(Landroid/widget/ListView;)V
    .locals 2

    .prologue
    .line 41
    instance-of v0, p1, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Landroid/widget/ExpandableListView;

    invoke-virtual {p0, p1}, Ldolphin/preference/ExpandablePreferenceScreen;->a(Landroid/widget/ExpandableListView;)V

    .line 47
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must bind with ExpandableListView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ldolphin/preference/e;

    invoke-direct {v0, p0}, Ldolphin/preference/e;-><init>(Ldolphin/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceScreen;->a()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v1, v0, Ldolphin/preference/Preference;

    if-nez v1, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_0
    check-cast v0, Ldolphin/preference/Preference;

    .line 68
    invoke-virtual {v0, p0}, Ldolphin/preference/Preference;->performClick(Ldolphin/preference/PreferenceScreen;)V

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Doesn\'t support click event on ExpandablePreferenceScreen"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceScreen;->a()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    .line 77
    instance-of v2, v0, Ldolphin/preference/Preference;

    if-nez v2, :cond_0

    move v0, v1

    .line 85
    :goto_0
    return v0

    .line 80
    :cond_0
    instance-of v2, v0, Ldolphin/preference/ExpandablePreferenceCategory;

    if-eqz v2, :cond_1

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    check-cast v0, Ldolphin/preference/Preference;

    .line 84
    invoke-virtual {v0, p0}, Ldolphin/preference/Preference;->performClick(Ldolphin/preference/PreferenceScreen;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method
