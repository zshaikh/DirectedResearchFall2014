.class public Ldolphin/preference/ExpandablePreferenceActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;
.source "ExpandablePreferenceActivity.java"

# interfaces
.implements Ldolphin/preference/ad;


# instance fields
.field private a:Ldolphin/preference/z;

.field private b:Landroid/os/Bundle;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;-><init>()V

    .line 45
    new-instance v0, Ldolphin/preference/d;

    invoke-direct {v0, p0}, Ldolphin/preference/d;-><init>(Ldolphin/preference/ExpandablePreferenceActivity;)V

    iput-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ldolphin/preference/ExpandablePreferenceActivity;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceScreen;->a(Landroid/widget/ListView;)V

    .line 128
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->b:Landroid/os/Bundle;

    invoke-super {p0, v0}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->b:Landroid/os/Bundle;

    .line 133
    :cond_0
    return-void
.end method

.method private e()Ldolphin/preference/z;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ldolphin/preference/z;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Ldolphin/preference/z;-><init>(Landroid/app/Activity;I)V

    .line 142
    invoke-virtual {v0, p0}, Ldolphin/preference/z;->a(Ldolphin/preference/ad;)V

    .line 143
    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0, p1}, Ldolphin/preference/z;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ldolphin/preference/z;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->f()V

    .line 206
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ldolphin/preference/z;->a(Landroid/content/Context;ILdolphin/preference/PreferenceScreen;)Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/ExpandablePreferenceActivity;->a(Ldolphin/preference/PreferenceScreen;)V

    .line 208
    return-void
.end method

.method public a(Ldolphin/preference/PreferenceScreen;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0, p1}, Ldolphin/preference/z;->a(Ldolphin/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 167
    invoke-direct {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->c()V

    .line 168
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0, v0}, Ldolphin/preference/ExpandablePreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    return-void
.end method

.method public a(Ldolphin/preference/PreferenceScreen;Ldolphin/preference/Preference;)Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/CharSequence;)Ldolphin/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0, p1}, Ldolphin/preference/z;->b(Ljava/lang/CharSequence;)Ldolphin/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ldolphin/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->c()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/preference/z;->a(IILandroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->onContentChanged()V

    .line 110
    invoke-direct {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->c()V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 20
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Ldolphin/preference/ExpandablePreferenceActivity;->setContentView(I)V

    .line 22
    invoke-direct {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->e()Ldolphin/preference/z;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    .line 23
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 24
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setScrollBarStyle(I)V

    .line 25
    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 27
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->onDestroy()V

    .line 68
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->g()V

    .line 69
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0, p1}, Ldolphin/preference/z;->a(Landroid/content/Intent;)V

    .line 247
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1, v0}, Ldolphin/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 90
    iput-object p1, p0, Ldolphin/preference/ExpandablePreferenceActivity;->b:Landroid/os/Bundle;

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Ldolphin/preference/ExpandablePreferenceActivity;->b()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseExpandableListActivity;->onStop()V

    .line 61
    iget-object v0, p0, Ldolphin/preference/ExpandablePreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->f()V

    .line 62
    return-void
.end method
