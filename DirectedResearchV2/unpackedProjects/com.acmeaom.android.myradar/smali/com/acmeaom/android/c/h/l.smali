.class public final enum Lcom/acmeaom/android/c/h/l;
.super Ljava/lang/Enum;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final enum a:Lcom/acmeaom/android/c/h/l;

.field public static final enum b:Lcom/acmeaom/android/c/h/l;

.field public static final enum c:Lcom/acmeaom/android/c/h/l;

.field public static final enum d:Lcom/acmeaom/android/c/h/l;

.field public static final enum e:Lcom/acmeaom/android/c/h/l;

.field public static final enum f:Lcom/acmeaom/android/c/h/l;

.field public static final enum g:Lcom/acmeaom/android/c/h/l;

.field public static final enum h:Lcom/acmeaom/android/c/h/l;

.field private static final synthetic i:[Lcom/acmeaom/android/c/h/l;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Lcom/acmeaom/android/c/h/l;

    const-string v1, "FWTileStatusError"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/c/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/l;->a:Lcom/acmeaom/android/c/h/l;

    .line 101
    new-instance v0, Lcom/acmeaom/android/c/h/l;

    const-string v1, "FWTileStatusCanceled"

    invoke-direct {v0, v1, v4}, Lcom/acmeaom/android/c/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/l;->b:Lcom/acmeaom/android/c/h/l;

    .line 102
    new-instance v0, Lcom/acmeaom/android/c/h/l;

    const-string v1, "FWTileStatusLoadingFromCache"

    invoke-direct {v0, v1, v5}, Lcom/acmeaom/android/c/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/l;->c:Lcom/acmeaom/android/c/h/l;

    .line 103
    new-instance v0, Lcom/acmeaom/android/c/h/l;

    const-string v1, "FWTileStatusNetworkLoadQueued"

    invoke-direct {v0, v1, v6}, Lcom/acmeaom/android/c/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/l;->d:Lcom/acmeaom/android/c/h/l;

    .line 104
    new-instance v0, Lcom/acmeaom/android/c/h/l;

    const-string v1, "FWTileStatusLoadingFromNetwork"

    invoke-direct {v0, v1, v7}, Lcom/acmeaom/android/c/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/l;->e:Lcom/acmeaom/android/c/h/l;

    .line 106
    new-instance v0, Lcom/acmeaom/android/c/h/l;

    const-string v1, "FWTileStatusBuffering"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/c/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/l;->f:Lcom/acmeaom/android/c/h/l;

    .line 107
    new-instance v0, Lcom/acmeaom/android/c/h/l;

    const-string v1, "FWTileStatusFadingIn"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/c/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/l;->g:Lcom/acmeaom/android/c/h/l;

    .line 108
    new-instance v0, Lcom/acmeaom/android/c/h/l;

    const-string v1, "FWTileStatusFadedIn"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/c/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/h/l;->h:Lcom/acmeaom/android/c/h/l;

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/acmeaom/android/c/h/l;

    sget-object v1, Lcom/acmeaom/android/c/h/l;->a:Lcom/acmeaom/android/c/h/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acmeaom/android/c/h/l;->b:Lcom/acmeaom/android/c/h/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/acmeaom/android/c/h/l;->c:Lcom/acmeaom/android/c/h/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/acmeaom/android/c/h/l;->d:Lcom/acmeaom/android/c/h/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/acmeaom/android/c/h/l;->e:Lcom/acmeaom/android/c/h/l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/acmeaom/android/c/h/l;->f:Lcom/acmeaom/android/c/h/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/acmeaom/android/c/h/l;->g:Lcom/acmeaom/android/c/h/l;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/acmeaom/android/c/h/l;->h:Lcom/acmeaom/android/c/h/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/acmeaom/android/c/h/l;->i:[Lcom/acmeaom/android/c/h/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/c/h/l;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/acmeaom/android/c/h/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/l;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/c/h/l;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/acmeaom/android/c/h/l;->i:[Lcom/acmeaom/android/c/h/l;

    invoke-virtual {v0}, [Lcom/acmeaom/android/c/h/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/c/h/l;

    return-object v0
.end method
