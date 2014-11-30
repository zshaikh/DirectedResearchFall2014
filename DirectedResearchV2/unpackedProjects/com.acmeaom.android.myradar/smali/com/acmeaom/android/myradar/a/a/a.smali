.class public Lcom/acmeaom/android/myradar/a/a/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/myradar/a/l;


# instance fields
.field private final a:Lcom/acmeaom/android/myradar/a/a/c;

.field private b:Ljava/lang/String;

.field private c:Lcom/acmeaom/android/myradar/a/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/acmeaom/android/myradar/a/a/c;

    invoke-direct {v0, p0, p1}, Lcom/acmeaom/android/myradar/a/a/c;-><init>(Lcom/acmeaom/android/myradar/a/a/a;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/a/a;->a:Lcom/acmeaom/android/myradar/a/a/c;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/a/a/a;)Lcom/acmeaom/android/myradar/a/j;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/a/a;->c:Lcom/acmeaom/android/myradar/a/j;

    return-object v0
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/a/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/acmeaom/android/myradar/a/a/a;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/a/a;->c:Lcom/acmeaom/android/myradar/a/j;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/a/a;->c:Lcom/acmeaom/android/myradar/a/j;

    sget-object v1, Lcom/android/vending/billing/i;->a:Lcom/android/vending/billing/i;

    invoke-interface {v0, v1}, Lcom/acmeaom/android/myradar/a/j;->b(Lcom/android/vending/billing/i;)V

    .line 143
    :cond_0
    return-void
.end method

.method public a(Lcom/acmeaom/android/myradar/a/j;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/acmeaom/android/myradar/a/a/a;->c:Lcom/acmeaom/android/myradar/a/j;

    .line 195
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 133
    invoke-static {p1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/a/a;->a:Lcom/acmeaom/android/myradar/a/a/c;

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 147
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateItemDataRequest(Ljava/util/Set;)Ljava/lang/String;

    .line 161
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method
