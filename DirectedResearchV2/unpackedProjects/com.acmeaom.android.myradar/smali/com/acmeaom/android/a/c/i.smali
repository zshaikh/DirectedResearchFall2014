.class public Lcom/acmeaom/android/a/c/i;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/acmeaom/android/a/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/acmeaom/android/a/c/i;

    invoke-direct {v0}, Lcom/acmeaom/android/a/c/i;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/c/i;->a:Lcom/acmeaom/android/a/c/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
