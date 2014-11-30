.class public Lcom/dolphin/browser/core/ActivityTab;
.super Lcom/dolphin/browser/core/an;
.source "ActivityTab.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field public static final ACTION_RELOAD:Ljava/lang/String; = "reload"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field static final a:Landroid/app/Instrumentation;


# instance fields
.field private final b:Landroid/app/LocalActivityManager;

.field private c:Lcom/dolphin/browser/core/bl;

.field private final d:Landroid/app/Activity;

.field private r:Landroid/app/Activity;

.field private s:Landroid/content/Intent;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/ActivityTab;->a:Landroid/app/Instrumentation;

    return-void
.end method

.method constructor <init>(Lcom/dolphin/browser/core/TabManager;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/core/an;-><init>(Lcom/dolphin/browser/core/TabManager;I)V

    .line 90
    iput-object p2, p0, Lcom/dolphin/browser/core/ActivityTab;->d:Landroid/app/Activity;

    .line 91
    new-instance v0, Landroid/app/LocalActivityManager;

    invoke-direct {v0, p2, v3}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 94
    const v1, 0x1030009

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    const-string v1, "activity"

    invoke-virtual {v0, v1, p3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    new-instance v0, Lcom/dolphin/browser/core/bl;

    invoke-direct {v0, v1, v2, p0}, Lcom/dolphin/browser/core/bl;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/dolphin/browser/core/an;)V

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ActivityTab;->u:Z

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->b(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ActivityTab;->v:Z

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->w:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/dolphin/browser/core/ActivityTab;->s:Landroid/content/Intent;

    .line 104
    iput-object p4, p0, Lcom/dolphin/browser/core/ActivityTab;->t:Ljava/lang/String;

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/dolphin/browser/core/TabManager;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/core/an;-><init>(Lcom/dolphin/browser/core/TabManager;I)V

    .line 110
    iput-object p2, p0, Lcom/dolphin/browser/core/ActivityTab;->d:Landroid/app/Activity;

    .line 111
    const-string v0, "intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->s:Landroid/content/Intent;

    .line 112
    const-string v0, "id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->t:Ljava/lang/String;

    .line 113
    const-string v0, "url"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->w:Ljava/lang/String;

    .line 114
    const-string v0, "show_title_bar"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ActivityTab;->u:Z

    .line 115
    const-string v0, "sideslip"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ActivityTab;->v:Z

    .line 116
    new-instance v0, Landroid/app/LocalActivityManager;

    invoke-direct {v0, p2, v2}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    .line 117
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/core/ActivityTab;->setSavedState(Landroid/os/Bundle;)V

    .line 118
    iput-boolean v2, p0, Lcom/dolphin/browser/core/ActivityTab;->e:Z

    .line 119
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->j()V

    .line 120
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1006
    sget-object v0, Lcom/dolphin/browser/core/ActivityTab;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0, p1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1007
    return-void
.end method

.method private e(Z)V
    .locals 0

    .prologue
    .line 918
    if-eqz p1, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->e()V

    .line 921
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->t:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->e()V

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 171
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 926
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 935
    :goto_0
    return v2

    .line 929
    :cond_0
    const-string v0, "activity"

    iget-object v1, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 930
    const-string v0, "intent"

    iget-object v1, p0, Lcom/dolphin/browser/core/ActivityTab;->s:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 931
    const-string v0, "id"

    iget-object v1, p0, Lcom/dolphin/browser/core/ActivityTab;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v0, "url"

    iget-object v1, p0, Lcom/dolphin/browser/core/ActivityTab;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v0, "show_title_bar"

    iget-boolean v1, p0, Lcom/dolphin/browser/core/ActivityTab;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 934
    const-string v0, "sideslip"

    iget-boolean v1, p0, Lcom/dolphin/browser/core/ActivityTab;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public bridge synthetic addChildTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->addChildTab(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 623
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    return-void
.end method

.method public b(Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/ActivityTab;->e(Z)V

    .line 909
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/bl;->getView(Z)Landroid/view/View;

    move-result-object v0

    .line 912
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->e()V

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 177
    return-void
.end method

.method protected b(Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 941
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->t:Ljava/lang/String;

    .line 942
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->s:Landroid/content/Intent;

    .line 943
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->w:Ljava/lang/String;

    .line 944
    const-string v0, "show_title_bar"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ActivityTab;->u:Z

    .line 945
    const-string v0, "sideslip"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ActivityTab;->v:Z

    .line 946
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->s:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    move v0, v1

    .line 980
    :goto_0
    return v0

    .line 953
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 954
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    const-string v3, "activity"

    iget-object v4, p0, Lcom/dolphin/browser/core/ActivityTab;->s:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    .line 955
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 959
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 962
    :goto_1
    if-eqz v0, :cond_1

    .line 963
    :try_start_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 964
    if-eqz v2, :cond_1

    .line 965
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 967
    iget-object v3, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-nez v3, :cond_2

    .line 968
    new-instance v3, Lcom/dolphin/browser/core/bl;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, p0}, Lcom/dolphin/browser/core/bl;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/dolphin/browser/core/an;)V

    iput-object v3, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    .line 972
    :goto_2
    iput-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    .line 980
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 970
    :cond_2
    iget-object v3, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/core/bl;->a(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 975
    :catch_1
    move-exception v0

    .line 976
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    move v0, v1

    .line 977
    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->c()V

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 194
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic canStateUndo()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->canStateUndo()Z

    move-result v0

    return v0
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public cancelSelectText()V
    .locals 0

    .prologue
    .line 813
    return-void
.end method

.method public captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/core/bl;->captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1061
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/bl;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public clearContentAndHistory()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public clearFormData()V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method public clearHistory()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public bridge synthetic clearInLoad()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->clearInLoad()V

    return-void
.end method

.method public clearMatches()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public bridge synthetic clearPageData()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->clearPageData()V

    return-void
.end method

.method public clearSslPreferences()V
    .locals 0

    .prologue
    .line 545
    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public bridge synthetic closeOnExit()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->closeOnExit()Z

    move-result v0

    return v0
.end method

.method public containsView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public containsWebView(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public contentToViewX(I)I
    .locals 0

    .prologue
    .line 865
    return p1
.end method

.method public contentToViewY(I)I
    .locals 0

    .prologue
    .line 871
    return p1
.end method

.method public copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 986
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->destroy()V

    .line 987
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 989
    iput-object v2, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    .line 990
    iput-object v2, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    .line 992
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-nez v0, :cond_0

    .line 657
    const/4 v0, 0x0

    .line 659
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/bl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public doCopySelection()Z
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x0

    return v0
.end method

.method public doSelectTextDone()V
    .locals 0

    .prologue
    .line 818
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1013
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1014
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->getSavedState()Landroid/os/Bundle;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/ActivityTab;->restoreState(Landroid/os/Bundle;)Z

    .line 1000
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->g()V

    .line 1002
    :cond_0
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V
    .locals 0

    .prologue
    .line 1046
    return-void
.end method

.method public findNext(Z)V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public flingScroll(II)V
    .locals 0

    .prologue
    .line 688
    return-void
.end method

.method public freeMemory()V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getChildTabs()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getChildTabs()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public bridge synthetic getData(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->getData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFakeProgress()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFakeProgress()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstChildTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFirstChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFlatHistoryCount()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFlatHistoryCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFlatHistoryIndex()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFlatHistoryIndex()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-nez v0, :cond_0

    .line 845
    const/4 v0, 0x0

    .line 847
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/bl;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLastChildTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLastChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastGameModeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLastGameModeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastVideoModeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLastVideoModeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLockIconType()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLockIconType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinWebAppModePageIndex()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getMinWebAppModePageIndex()I

    move-result v0

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPageData(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->getPageData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getParentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 479
    const/16 v0, 0x64

    return v0
.end method

.method public bridge synthetic getRightSiblingTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getRightSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSSLError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getSSLError()Landroid/net/http/SslError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSavedState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getSavedState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 441
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getSecureStatus()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getSecureStatus()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecurityIconType()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getSecurityIconType()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 200
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getType()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->getWidth()I

    move-result v0

    return v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->getTitleHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;

    move-result-object v0

    return-object v0
.end method

.method public getWebSettings()Lcom/dolphin/browser/core/IWebSettings;
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getWebView()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-nez v0, :cond_0

    .line 836
    const/4 v0, 0x0

    .line 838
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/bl;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 388
    :cond_0
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public goForward()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public hasFeature(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 719
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 720
    iget-object v1, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, p1, 0x10

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic hasSSLError()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->hasSSLError()Z

    move-result v0

    return v0
.end method

.method public hideTitleBar()V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public hideZoomButtonsController()V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public bridge synthetic inLoad()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->inLoad()Z

    move-result v0

    return v0
.end method

.method public invokeZoomPicker()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method public isAtLeftEdge()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/dolphin/browser/core/ActivityTab;->v:Z

    return v0
.end method

.method public isAtRightEdge()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/dolphin/browser/core/ActivityTab;->v:Z

    return v0
.end method

.method public bridge synthetic isBackOrForward()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isBackOrForward()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDeleting()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isDeleting()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDestroyed()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isGameMode()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isGameMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInForeground()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isInForeground()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoadingReceivedError()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isLoadingReceivedError()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpeningContentUrl()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isOpeningContentUrl()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpeningInNewTab()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isOpeningInNewTab()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isRecycled()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isRecycled()Z

    move-result v0

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isTitleReceived()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isTitleReceived()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVideoMode()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isVideoMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isWebappMode()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isWebappMode()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 340
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->m()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 343
    invoke-interface {v1, p1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public bridge synthetic needShowSearchEngineTab()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->needShowSearchEngineTab()Z

    move-result v0

    return v0
.end method

.method public notifyFindDialogDismissed2()V
    .locals 0

    .prologue
    .line 577
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x0

    .line 641
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/core/bl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-nez v0, :cond_0

    .line 648
    const/4 v0, 0x0

    .line 650
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/core/bl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->pause()V

    .line 508
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->performResume()V

    .line 514
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-nez v0, :cond_0

    .line 666
    const/4 v0, 0x0

    .line 668
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/bl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-nez v0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 682
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/bl;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 898
    return-void
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->b:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 182
    return-void
.end method

.method public pauseTimers()V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method public bridge synthetic performResume()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->performResume()V

    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "reload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/dolphin/browser/core/ActivityTab;->r:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/core/ActivityTab;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 374
    :cond_0
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-nez v0, :cond_0

    .line 706
    const/4 v0, 0x0

    .line 708
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/bl;->requestFocus()Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public bridge synthetic resetLockIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->resetLockIcon(Ljava/lang/String;)V

    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic restoreState(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public bridge synthetic revertLockIcon()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->revertLockIcon()V

    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 285
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ActivityTab;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    .line 290
    if-eqz v1, :cond_0

    .line 296
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/dolphin/browser/core/b;

    invoke-direct {v3, p0, v0, v1, p2}, Lcom/dolphin/browser/core/b;-><init>(Lcom/dolphin/browser/core/ActivityTab;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 322
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1025
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1029
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    .prologue
    .line 1021
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 714
    return-void
.end method

.method public bridge synthetic setBottomBar(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setBottomBar(Landroid/view/View;)V

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public bridge synthetic setCloseOnExit(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setCloseOnExit(Z)V

    return-void
.end method

.method public setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 0

    .prologue
    .line 883
    return-void
.end method

.method public bridge synthetic setData(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/an;->setData(ILjava/lang/Object;)V

    return-void
.end method

.method public setFindDialogHeight(I)V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public bridge synthetic setGameMode(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setGameMode(Z)V

    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public bridge synthetic setIsBackOrForward(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setIsBackOrForward(Z)V

    return-void
.end method

.method public bridge synthetic setIsOpeningContentUrl(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setIsOpeningContentUrl(Z)V

    return-void
.end method

.method public bridge synthetic setIsOpeningInNewTab(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setIsOpeningInNewTab(Z)V

    return-void
.end method

.method public bridge synthetic setIsTitleReceived(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setIsTitleReceived(Z)V

    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public bridge synthetic setLastGameModeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setLastGameModeUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLastVideoModeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setLastVideoModeUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method public bridge synthetic setLoadingReceivedErrorState(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setLoadingReceivedErrorState(Z)V

    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0

    .prologue
    .line 674
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 893
    return-void
.end method

.method public setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 1052
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public bridge synthetic setPageData(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/an;->setPageData(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setParentTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setParentTab(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method public setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public bridge synthetic setSavedState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setSavedState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public bridge synthetic setSecurityIconType(I)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setSecurityIconType(I)V

    return-void
.end method

.method public setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .locals 0

    .prologue
    .line 888
    return-void
.end method

.method public bridge synthetic setShowSearchEngineTabState(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setShowSearchEngineTabState(Z)V

    return-void
.end method

.method public bridge synthetic setStoppedLoadingByUser(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setStoppedLoadingByUser(Z)V

    return-void
.end method

.method public setTitleBar(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/dolphin/browser/core/ActivityTab;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/dolphin/browser/core/ActivityTab;->c:Lcom/dolphin/browser/core/bl;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/bl;->setTitleBar(Landroid/view/View;)V

    .line 791
    :cond_0
    return-void
.end method

.method public bridge synthetic setVideoMode(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setVideoMode(Z)V

    return-void
.end method

.method public bridge synthetic setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V

    return-void
.end method

.method public setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method public bridge synthetic setWebappMode(Z)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setWebappMode(Z)V

    return-void
.end method

.method public showTitleBar()V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public startSelectText()V
    .locals 0

    .prologue
    .line 808
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public bridge synthetic stoppedLoadingByUser()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->stoppedLoadingByUser()Z

    move-result v0

    return v0
.end method

.method public viewToContentX(I)I
    .locals 0

    .prologue
    .line 853
    return p1
.end method

.method public viewToContentY(I)I
    .locals 0

    .prologue
    .line 859
    return p1
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x0

    return v0
.end method
