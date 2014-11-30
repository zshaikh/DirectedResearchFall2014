.class public final enum Lcom/acmeaom/android/a/i/p;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/i/p;

.field public static final enum b:Lcom/acmeaom/android/a/i/p;

.field private static final synthetic d:[Lcom/acmeaom/android/a/i/p;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/acmeaom/android/a/i/p;

    const-string v1, "UI_USER_INTERFACE_IDIOM_PHONE"

    const-string v2, "iphone"

    invoke-direct {v0, v1, v3, v2}, Lcom/acmeaom/android/a/i/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/acmeaom/android/a/i/p;->a:Lcom/acmeaom/android/a/i/p;

    new-instance v0, Lcom/acmeaom/android/a/i/p;

    const-string v1, "UI_USER_INTERFACE_IDIOM_PAD"

    const-string v2, "ipad"

    invoke-direct {v0, v1, v4, v2}, Lcom/acmeaom/android/a/i/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/acmeaom/android/a/i/p;->b:Lcom/acmeaom/android/a/i/p;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/acmeaom/android/a/i/p;

    sget-object v1, Lcom/acmeaom/android/a/i/p;->a:Lcom/acmeaom/android/a/i/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/a/i/p;->b:Lcom/acmeaom/android/a/i/p;

    aput-object v1, v0, v4

    sput-object v0, Lcom/acmeaom/android/a/i/p;->d:[Lcom/acmeaom/android/a/i/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/acmeaom/android/a/i/p;->c:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/i/p;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/acmeaom/android/a/i/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/i/p;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/i/p;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/acmeaom/android/a/i/p;->d:[Lcom/acmeaom/android/a/i/p;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/i/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/i/p;

    return-object v0
.end method
