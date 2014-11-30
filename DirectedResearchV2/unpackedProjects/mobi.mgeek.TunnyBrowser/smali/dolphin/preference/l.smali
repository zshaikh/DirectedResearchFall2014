.class Ldolphin/preference/l;
.super Landroid/widget/BaseAdapter;
.source "GroupPreference.java"


# instance fields
.field final synthetic a:Ldolphin/preference/GroupPreference;


# direct methods
.method private constructor <init>(Ldolphin/preference/GroupPreference;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Ldolphin/preference/l;->a:Ldolphin/preference/GroupPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/preference/GroupPreference;Ldolphin/preference/k;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Ldolphin/preference/l;-><init>(Ldolphin/preference/GroupPreference;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ldolphin/preference/l;->a:Ldolphin/preference/GroupPreference;

    invoke-virtual {v0}, Ldolphin/preference/GroupPreference;->f()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    const-string v0, ""

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ldolphin/preference/l;->a:Ldolphin/preference/GroupPreference;

    invoke-virtual {v0, p1}, Ldolphin/preference/GroupPreference;->a(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    iget-object v0, p0, Ldolphin/preference/l;->a:Ldolphin/preference/GroupPreference;

    invoke-virtual {v0}, Ldolphin/preference/GroupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/l;->a:Ldolphin/preference/GroupPreference;

    invoke-static {v1}, Ldolphin/preference/GroupPreference;->a(Ldolphin/preference/GroupPreference;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 158
    iget-object v0, p0, Ldolphin/preference/l;->a:Ldolphin/preference/GroupPreference;

    invoke-virtual {v0, p2}, Ldolphin/preference/GroupPreference;->a(Landroid/view/View;)V

    .line 160
    :cond_0
    iget-object v0, p0, Ldolphin/preference/l;->a:Ldolphin/preference/GroupPreference;

    invoke-virtual {p0}, Ldolphin/preference/l;->getCount()I

    move-result v1

    invoke-static {v0, p1, v1, p2}, Ldolphin/preference/GroupPreference;->a(Ldolphin/preference/GroupPreference;IILandroid/view/View;)V

    .line 161
    iget-object v0, p0, Ldolphin/preference/l;->a:Ldolphin/preference/GroupPreference;

    invoke-virtual {v0, p2, p1}, Ldolphin/preference/GroupPreference;->a(Landroid/view/View;I)V

    .line 162
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ldolphin/preference/l;->a:Ldolphin/preference/GroupPreference;

    invoke-virtual {v0}, Ldolphin/preference/GroupPreference;->g()I

    move-result v0

    return v0
.end method
