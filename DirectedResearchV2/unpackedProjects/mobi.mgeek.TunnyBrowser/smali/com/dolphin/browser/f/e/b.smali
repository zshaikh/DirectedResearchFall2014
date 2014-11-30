.class public Lcom/dolphin/browser/f/e/b;
.super Lcom/dolphin/browser/ui/launcher/g;
.source "HomePageView.java"

# interfaces
.implements Lcom/dolphin/browser/core/j;
.implements Lcom/dolphin/browser/core/k;


# static fields
.field public static final a:Ljava/lang/Object;

.field private static l:Lcom/dolphin/browser/f/e/b;


# instance fields
.field private m:Lcom/dolphin/browser/f/e/g;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/f/e/f;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Lcom/dolphin/browser/menu/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolphin/browser/f/e/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/f/e/g;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/f/e/b;->m:Lcom/dolphin/browser/f/e/g;

    .line 77
    const-string v0, "HomePageView init"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1}, Lcom/dolphin/browser/f/e/b;->b(Landroid/content/Context;)V

    .line 79
    sget-object v1, Lcom/dolphin/browser/f/e/b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/f/e/b;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 81
    iput-object p2, p0, Lcom/dolphin/browser/f/e/b;->m:Lcom/dolphin/browser/f/e/g;

    .line 82
    return-void
.end method

.method private K()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/dolphin/browser/f/e/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/f/e/c;-><init>(Lcom/dolphin/browser/f/e/b;)V

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 115
    new-instance v0, Lcom/dolphin/browser/f/e/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/f/e/d;-><init>(Lcom/dolphin/browser/f/e/b;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 125
    new-instance v0, Lcom/dolphin/browser/f/e/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/f/e/e;-><init>(Lcom/dolphin/browser/f/e/b;)V

    const-wide/16 v1, 0x3a98

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 135
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/b;->J()Lcom/dolphin/browser/promoted/PromotionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/PromotionView;->a()V

    .line 136
    return-void
.end method

.method private L()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/b;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/dolphin/browser/f/e/b;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    .line 154
    :goto_0
    const-string v3, "settings_new"

    const-string v4, "setdefaultbrowser"

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;)V

    .line 158
    :cond_0
    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/Browser;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {v1, v2, v5, v5}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;ZZ)V

    .line 166
    :cond_1
    :goto_1
    return-void

    .line 153
    :cond_2
    const-string v0, "false"

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/b;->F()V

    goto :goto_1
.end method

.method private M()Z
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    const-string v1, "is_default_browser"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private N()V
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/b;->G()V

    goto :goto_0
.end method

.method private O()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/b;->H()V

    .line 193
    return-void
.end method

.method public static a()Lcom/dolphin/browser/f/e/b;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/dolphin/browser/f/e/b;->l:Lcom/dolphin/browser/f/e/b;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/f/e/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/f/e/b;->L()V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 90
    sput-object p0, Lcom/dolphin/browser/f/e/b;->l:Lcom/dolphin/browser/f/e/b;

    .line 92
    invoke-static {}, Lcom/dolphin/browser/h/e;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/f/e/b;->o:Z

    .line 95
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/b;->E()V

    .line 98
    iget-boolean v0, p0, Lcom/dolphin/browser/f/e/b;->o:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-eq v0, v1, :cond_1

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/f/e/b;->K()V

    .line 102
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/f/e/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/f/e/b;->N()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/f/e/b;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/f/e/b;->O()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/e/b;->e(Landroid/view/View;)V

    .line 225
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/e;

    .line 227
    invoke-virtual {v0}, Lcom/dolphin/browser/k/e;->a()V

    .line 228
    return-void
.end method

.method public a(Lcom/dolphin/browser/update/model/b;Lcom/dolphin/browser/DolphinService/m;)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/f/e/b;->b(Lcom/dolphin/browser/update/model/b;Lcom/dolphin/browser/DolphinService/m;)V

    .line 187
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/update/f;->a(I)V

    .line 188
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 196
    const-string v0, "HomePageView"

    .line 197
    const-string v0, "HomePageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showShareDolphinIfNeeded, jumpQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/dolphin/browser/s/b;->a()Lcom/dolphin/browser/s/b;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/dolphin/browser/s/b;->d()Lcom/dolphin/browser/s/p;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/s/p;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    const-string v0, "HomePageView"

    const-string v1, "showShareDolphinIfNeeded, sparkSettings.isShareDolphinEnabled(): false"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/s/b;->c()Lcom/dolphin/browser/s/q;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/dolphin/browser/s/q;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    :cond_2
    const-string v0, "HomePageView"

    const-string v1, "showShareDolphinIfNeeded, sparkTask is null or confirmed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_3
    if-eqz p1, :cond_4

    .line 210
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/s/q;->b(Z)V

    .line 211
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/q;)V

    .line 213
    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/dolphin/browser/f/e/b;->a(Lcom/dolphin/browser/s/q;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/e/b;->d(Landroid/view/View;)V

    .line 219
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/e/b;->e(Landroid/view/View;)V

    .line 232
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/dolphin/browser/ui/launcher/g;->d()V

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/f/e/b;->m:Lcom/dolphin/browser/f/e/g;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/f/e/b;->m:Lcom/dolphin/browser/f/e/g;

    invoke-interface {v0}, Lcom/dolphin/browser/f/e/g;->a()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/f/e/b;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/f/e/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/e/f;

    .line 263
    invoke-interface {v0}, Lcom/dolphin/browser/f/e/f;->a()V

    goto :goto_1

    .line 265
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/f/e/b;->n:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 250
    const-string v0, "Fps Of Open Folder Animation"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->c(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->draw(Landroid/graphics/Canvas;)V

    .line 302
    iget-boolean v0, p0, Lcom/dolphin/browser/f/e/b;->o:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Lcom/dolphin/browser/menu/ap;

    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/menu/ap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/f/e/b;->p:Lcom/dolphin/browser/menu/ap;

    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/f/e/b;->p:Lcom/dolphin/browser/menu/ap;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ap;->b()V

    .line 307
    iput-boolean v2, p0, Lcom/dolphin/browser/f/e/b;->o:Z

    .line 308
    invoke-static {v2}, Lcom/dolphin/browser/h/e;->b(Z)V

    .line 310
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/f/e/b;->p:Lcom/dolphin/browser/menu/ap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/f/e/b;->p:Lcom/dolphin/browser/menu/ap;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ap;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/f/e/b;->p:Lcom/dolphin/browser/menu/ap;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/f/e/b;->p:Lcom/dolphin/browser/menu/ap;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ap;->c()V

    .line 295
    invoke-direct {p0}, Lcom/dolphin/browser/f/e/b;->K()V

    .line 297
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/dolphin/browser/f/e/b;->a:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 142
    const-string v0, "View"

    const-string v1, "Trying to set HomePageTag."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
