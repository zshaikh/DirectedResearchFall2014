.class public final enum Lmobi/mgeek/TunnyBrowser/cj;
.super Ljava/lang/Enum;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/mgeek/TunnyBrowser/cj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmobi/mgeek/TunnyBrowser/cj;

.field public static final enum b:Lmobi/mgeek/TunnyBrowser/cj;

.field private static final synthetic c:[Lmobi/mgeek/TunnyBrowser/cj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 595
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cj;

    const-string v1, "OPEN_NEW_PAGE"

    invoke-direct {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/cj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/cj;->a:Lmobi/mgeek/TunnyBrowser/cj;

    new-instance v0, Lmobi/mgeek/TunnyBrowser/cj;

    const-string v1, "OPEN_PREVIOUS_PAGE"

    invoke-direct {v0, v1, v3}, Lmobi/mgeek/TunnyBrowser/cj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/cj;->b:Lmobi/mgeek/TunnyBrowser/cj;

    .line 594
    const/4 v0, 0x2

    new-array v0, v0, [Lmobi/mgeek/TunnyBrowser/cj;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/cj;->a:Lmobi/mgeek/TunnyBrowser/cj;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/mgeek/TunnyBrowser/cj;->b:Lmobi/mgeek/TunnyBrowser/cj;

    aput-object v1, v0, v3

    sput-object v0, Lmobi/mgeek/TunnyBrowser/cj;->c:[Lmobi/mgeek/TunnyBrowser/cj;

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
    .line 594
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/mgeek/TunnyBrowser/cj;
    .locals 1

    .prologue
    .line 594
    const-class v0, Lmobi/mgeek/TunnyBrowser/cj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/cj;

    return-object v0
.end method

.method public static values()[Lmobi/mgeek/TunnyBrowser/cj;
    .locals 1

    .prologue
    .line 594
    sget-object v0, Lmobi/mgeek/TunnyBrowser/cj;->c:[Lmobi/mgeek/TunnyBrowser/cj;

    invoke-virtual {v0}, [Lmobi/mgeek/TunnyBrowser/cj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/mgeek/TunnyBrowser/cj;

    return-object v0
.end method
