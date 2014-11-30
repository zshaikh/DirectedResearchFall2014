.class public abstract Ldolphin/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

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
    .line 82
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 97
    new-instance v0, Ldolphin/preference/t;

    invoke-direct {v0, p0}, Ldolphin/preference/t;-><init>(Ldolphin/preference/PreferenceActivity;)V

    iput-object v0, p0, Ldolphin/preference/PreferenceActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ldolphin/preference/PreferenceActivity;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ldolphin/preference/PreferenceActivity;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Ldolphin/preference/PreferenceActivity;->a()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Ldolphin/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceScreen;->a(Landroid/widget/ListView;)V

    .line 193
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->b:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/PreferenceActivity;->b:Landroid/os/Bundle;

    .line 198
    :cond_0
    return-void
.end method

.method private d()Ldolphin/preference/z;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ldolphin/preference/z;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Ldolphin/preference/z;-><init>(Landroid/app/Activity;I)V

    .line 207
    invoke-virtual {v0, p0}, Ldolphin/preference/z;->a(Ldolphin/preference/ad;)V

    .line 208
    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0, p1}, Ldolphin/preference/z;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ldolphin/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->c()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Ldolphin/preference/PreferenceActivity;->e()V

    .line 271
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {p0}, Ldolphin/preference/PreferenceActivity;->a()Ldolphin/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ldolphin/preference/z;->a(Landroid/content/Context;ILdolphin/preference/PreferenceScreen;)Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/PreferenceActivity;->a(Ldolphin/preference/PreferenceScreen;)V

    .line 273
    return-void
.end method

.method public a(Ldolphin/preference/PreferenceScreen;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0, p1}, Ldolphin/preference/z;->a(Ldolphin/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    invoke-direct {p0}, Ldolphin/preference/PreferenceActivity;->b()V

    .line 233
    invoke-virtual {p0}, Ldolphin/preference/PreferenceActivity;->a()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, v0}, Ldolphin/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    return-void
.end method

.method public a(Ldolphin/preference/PreferenceScreen;Ldolphin/preference/Preference;)Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/preference/z;->a(IILandroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 175
    invoke-direct {p0}, Ldolphin/preference/PreferenceActivity;->b()V

    .line 176
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Ldolphin/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020252

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300be

    invoke-virtual {p0, v0}, Ldolphin/preference/PreferenceActivity;->setContentView(I)V

    .line 115
    invoke-direct {p0}, Ldolphin/preference/PreferenceActivity;->d()Ldolphin/preference/z;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    .line 116
    invoke-virtual {p0}, Ldolphin/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 118
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 119
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->g()V

    .line 134
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0, p1}, Ldolphin/preference/z;->a(Landroid/content/Intent;)V

    .line 303
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 150
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Ldolphin/preference/PreferenceActivity;->a()Ldolphin/preference/PreferenceScreen;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1, v0}, Ldolphin/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 155
    iput-object p1, p0, Ldolphin/preference/PreferenceActivity;->b:Landroid/os/Bundle;

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Ldolphin/preference/PreferenceActivity;->a()Ldolphin/preference/PreferenceScreen;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 143
    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 144
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 126
    iget-object v0, p0, Ldolphin/preference/PreferenceActivity;->a:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->f()V

    .line 127
    return-void
.end method
