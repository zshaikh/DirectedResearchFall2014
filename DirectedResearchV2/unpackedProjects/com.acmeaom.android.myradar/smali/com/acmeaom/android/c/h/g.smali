.class public Lcom/acmeaom/android/c/h/g;
.super Lcom/acmeaom/android/c/h/n;
.source "ProGuard"


# static fields
.field public static final a:Lcom/acmeaom/android/c/h/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/acmeaom/android/c/h/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/h/j;-><init>(Lcom/acmeaom/android/c/h/h;)V

    sput-object v0, Lcom/acmeaom/android/c/h/g;->a:Lcom/acmeaom/android/c/h/i;

    return-void
.end method

.method private constructor <init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/acmeaom/android/c/h/n;-><init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;Z)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;ZLcom/acmeaom/android/c/h/h;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/acmeaom/android/c/h/g;-><init>(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/f;Z)V

    return-void
.end method


# virtual methods
.method protected c(Lcom/acmeaom/android/c/g/a;)Lcom/acmeaom/android/c/g/b/g;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/acmeaom/android/c/g/a;->g()Lcom/acmeaom/android/c/g/b/g;

    move-result-object v0

    return-object v0
.end method
