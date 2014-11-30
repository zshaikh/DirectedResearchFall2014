.class public final enum Lmobi/mgeek/TunnyBrowser/ci;
.super Ljava/lang/Enum;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/mgeek/TunnyBrowser/ci;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmobi/mgeek/TunnyBrowser/ci;

.field public static final enum b:Lmobi/mgeek/TunnyBrowser/ci;

.field public static final enum c:Lmobi/mgeek/TunnyBrowser/ci;

.field private static final synthetic d:[Lmobi/mgeek/TunnyBrowser/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 583
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ci;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/ci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ci;->a:Lmobi/mgeek/TunnyBrowser/ci;

    new-instance v0, Lmobi/mgeek/TunnyBrowser/ci;

    const-string v1, "IN_WIFI"

    invoke-direct {v0, v1, v3}, Lmobi/mgeek/TunnyBrowser/ci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ci;->b:Lmobi/mgeek/TunnyBrowser/ci;

    new-instance v0, Lmobi/mgeek/TunnyBrowser/ci;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lmobi/mgeek/TunnyBrowser/ci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ci;->c:Lmobi/mgeek/TunnyBrowser/ci;

    .line 582
    const/4 v0, 0x3

    new-array v0, v0, [Lmobi/mgeek/TunnyBrowser/ci;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/ci;->a:Lmobi/mgeek/TunnyBrowser/ci;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/mgeek/TunnyBrowser/ci;->b:Lmobi/mgeek/TunnyBrowser/ci;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/mgeek/TunnyBrowser/ci;->c:Lmobi/mgeek/TunnyBrowser/ci;

    aput-object v1, v0, v4

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ci;->d:[Lmobi/mgeek/TunnyBrowser/ci;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 582
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/mgeek/TunnyBrowser/ci;
    .locals 1

    .prologue
    .line 582
    const-class v0, Lmobi/mgeek/TunnyBrowser/ci;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/ci;

    return-object v0
.end method

.method public static values()[Lmobi/mgeek/TunnyBrowser/ci;
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ci;->d:[Lmobi/mgeek/TunnyBrowser/ci;

    invoke-virtual {v0}, [Lmobi/mgeek/TunnyBrowser/ci;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/mgeek/TunnyBrowser/ci;

    return-object v0
.end method
