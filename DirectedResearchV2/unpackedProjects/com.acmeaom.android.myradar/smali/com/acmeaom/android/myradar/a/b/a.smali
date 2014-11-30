.class public Lcom/acmeaom/android/myradar/a/b/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/myradar/a/l;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/acmeaom/android/myradar/a/b/d;

.field private final c:Landroid/app/Activity;

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/android/vending/billing/BillingService;

.field private g:Z

.field private h:Lcom/acmeaom/android/myradar/a/j;

.field private final i:Lcom/acmeaom/android/myradar/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/acmeaom/android/myradar/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/myradar/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->i:Lcom/acmeaom/android/myradar/a/e;

    .line 143
    iput-object p1, p0, Lcom/acmeaom/android/myradar/a/b/a;->c:Landroid/app/Activity;

    .line 144
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->d:Landroid/content/SharedPreferences;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->e:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/acmeaom/android/myradar/a/b/d;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/b/a;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/myradar/a/b/d;-><init>(Lcom/acmeaom/android/myradar/a/b/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->b:Lcom/acmeaom/android/myradar/a/b/d;

    .line 147
    new-instance v0, Lcom/android/vending/billing/BillingService;

    invoke-direct {v0}, Lcom/android/vending/billing/BillingService;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    .line 148
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/b/a;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/BillingService;->a(Landroid/content/Context;)V

    .line 150
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->b:Lcom/acmeaom/android/myradar/a/b/d;

    invoke-static {v0}, Lcom/android/vending/billing/o;->a(Lcom/android/vending/billing/m;)V

    .line 151
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    invoke-virtual {v0}, Lcom/android/vending/billing/BillingService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->h:Lcom/acmeaom/android/myradar/a/j;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->c:Landroid/app/Activity;

    const v1, 0x20002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 154
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->h:Lcom/acmeaom/android/myradar/a/j;

    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/j;->a()V

    .line 157
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/a/b/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/a/b/a;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/acmeaom/android/myradar/a/b/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/acmeaom/android/myradar/a/b/a;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->h:Lcom/acmeaom/android/myradar/a/j;

    return-object v0
.end method

.method static synthetic d(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/e;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->i:Lcom/acmeaom/android/myradar/a/e;

    return-object v0
.end method

.method static synthetic e(Lcom/acmeaom/android/myradar/a/b/a;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic f(Lcom/acmeaom/android/myradar/a/b/a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/a/b/a;->i()V

    return-void
.end method

.method static synthetic g(Lcom/acmeaom/android/myradar/a/b/a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/a/b/a;->j()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/acmeaom/android/myradar/a/b/b;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/a/b/b;-><init>(Lcom/acmeaom/android/myradar/a/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->i:Lcom/acmeaom/android/myradar/a/e;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/b/a;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/a/e;->a(Landroid/content/Context;)V

    .line 183
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    invoke-virtual {v0}, Lcom/android/vending/billing/BillingService;->b()Z

    .line 199
    return-void
.end method

.method public a(Lcom/acmeaom/android/myradar/a/j;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/acmeaom/android/myradar/a/b/a;->h:Lcom/acmeaom/android/myradar/a/j;

    .line 242
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/vending/billing/BillingService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->h:Lcom/acmeaom/android/myradar/a/j;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->h:Lcom/acmeaom/android/myradar/a/j;

    sget-object v1, Lcom/android/vending/billing/i;->e:Lcom/android/vending/billing/i;

    sget-object v2, Lcom/android/vending/billing/h;->b:Lcom/android/vending/billing/h;

    invoke-interface {v0, v1, p1, v2}, Lcom/acmeaom/android/myradar/a/j;->a(Lcom/android/vending/billing/i;Ljava/lang/String;Lcom/android/vending/billing/h;)V

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->b:Lcom/acmeaom/android/myradar/a/b/d;

    invoke-static {v0}, Lcom/android/vending/billing/o;->a(Lcom/android/vending/billing/m;)V

    .line 207
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->b:Lcom/acmeaom/android/myradar/a/b/d;

    invoke-static {v0}, Lcom/android/vending/billing/o;->b(Lcom/android/vending/billing/m;)V

    .line 219
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/a/b/a;->f()V

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    invoke-virtual {v0}, Lcom/android/vending/billing/BillingService;->c()V

    .line 225
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    invoke-virtual {v0}, Lcom/android/vending/billing/BillingService;->stopSelf()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/b/a;->c:Landroid/app/Activity;

    const-class v2, Lcom/android/vending/billing/BillingService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/b/a;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/a;->f:Lcom/android/vending/billing/BillingService;

    invoke-virtual {v0}, Lcom/android/vending/billing/BillingService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
