.class public Lcom/acmeaom/android/myradar/app/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private final a:Lcom/acmeaom/android/myradar/app/ui/u;

.field private final b:Lcom/google/ads/AdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "a14fbfd01b5ee9b"

    sput-object v0, Lcom/acmeaom/android/myradar/app/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/AdView;)V
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "starting helper"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/a;->b:Lcom/google/ads/AdView;

    .line 46
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->b:Lcom/google/ads/AdView;

    invoke-static {}, Lcom/acmeaom/android/myradar/app/a;->b()Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 47
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->b:Lcom/google/ads/AdView;

    new-instance v1, Lcom/acmeaom/android/myradar/app/b;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/b;-><init>(Lcom/acmeaom/android/myradar/app/a;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 73
    new-instance v0, Lcom/acmeaom/android/myradar/app/ui/u;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/a;->b:Lcom/google/ads/AdView;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/myradar/app/ui/u;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->a:Lcom/acmeaom/android/myradar/app/ui/u;

    .line 74
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->a:Lcom/acmeaom/android/myradar/app/ui/u;

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/myradar/app/ui/u;->a(I)V

    .line 75
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->a:Lcom/acmeaom/android/myradar/app/ui/u;

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/myradar/app/ui/u;->b(I)V

    .line 76
    const-string v0, "hiding footer"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->a:Lcom/acmeaom/android/myradar/app/ui/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/ui/u;->a(Z)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/a;)Lcom/google/ads/AdView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->b:Lcom/google/ads/AdView;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 30
    invoke-static {}, Lcom/acmeaom/android/a/f/g;->b()Lcom/acmeaom/android/a/f/g;

    const-string v0, "kDynamicURLsKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/acmeaom/android/myradar/app/a;->c:Ljava/lang/String;

    .line 35
    const-string v0, "a15337719aa223e"

    sget-object v1, Lcom/acmeaom/android/myradar/app/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/acmeaom/android/myradar/app/a;->c:Ljava/lang/String;

    const-string v1, "a14fbfd01b5ee9b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected ad unit id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/myradar/app/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 40
    :cond_0
    sget-object v0, Lcom/acmeaom/android/myradar/app/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/acmeaom/android/myradar/app/a;)Lcom/acmeaom/android/myradar/app/ui/u;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->a:Lcom/acmeaom/android/myradar/app/ui/u;

    return-object v0
.end method

.method public static b()Lcom/google/ads/AdRequest;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 83
    const-string v1, "E0A3D2C1819F734F9898BCC0967BF870"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 84
    const-string v1, "9637417EE5EB2CE2470AA1DF45CE61CC"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 85
    const-string v1, "4AAD241319DDBF93776F70D5C7591C53"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 86
    const-string v1, "01C0B83F9A94330C142D852CDAC9CA1A"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 87
    const-string v1, "7D102928240F7C123B2E396055F1B11E"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 89
    sget-object v1, Lcom/google/ads/AdRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 90
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->b:Lcom/google/ads/AdView;

    invoke-static {}, Lcom/acmeaom/android/myradar/app/a;->b()Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 97
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a;->b:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 101
    return-void
.end method
