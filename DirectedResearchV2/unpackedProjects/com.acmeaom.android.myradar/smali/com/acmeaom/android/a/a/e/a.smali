.class public Lcom/acmeaom/android/a/a/e/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:Lcom/acmeaom/android/a/a/c/a;


# direct methods
.method private constructor <init>(Ljava/lang/String;FLcom/acmeaom/android/a/a/c/a;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/acmeaom/android/a/a/e/a;->a:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/acmeaom/android/a/a/e/a;->b:F

    .line 15
    iput-object p3, p0, Lcom/acmeaom/android/a/a/e/a;->c:Lcom/acmeaom/android/a/a/c/a;

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;FLcom/acmeaom/android/a/a/c/a;)Lcom/acmeaom/android/a/a/e/a;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/acmeaom/android/a/a/e/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/acmeaom/android/a/a/e/a;-><init>(Ljava/lang/String;FLcom/acmeaom/android/a/a/c/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/acmeaom/android/a/a/e/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
