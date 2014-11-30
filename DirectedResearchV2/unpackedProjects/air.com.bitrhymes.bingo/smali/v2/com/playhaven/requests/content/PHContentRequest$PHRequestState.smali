.class public final enum Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;
.super Ljava/lang/Enum;
.source "PHContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/requests/content/PHContentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PHRequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

.field public static final enum DisplayingContent:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

.field public static final enum Done:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

.field public static final enum Initialized:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

.field public static final enum Preloaded:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

.field public static final enum Preloading:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    const-string v1, "Initialized"

    invoke-direct {v0, v1, v2}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Initialized:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 81
    new-instance v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    const-string v1, "Preloading"

    invoke-direct {v0, v1, v3}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Preloading:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 82
    new-instance v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    const-string v1, "Preloaded"

    invoke-direct {v0, v1, v4}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Preloaded:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 83
    new-instance v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    const-string v1, "DisplayingContent"

    invoke-direct {v0, v1, v5}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->DisplayingContent:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 84
    new-instance v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    const-string v1, "Done"

    invoke-direct {v0, v1, v6}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Done:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Initialized:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    aput-object v1, v0, v2

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Preloading:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Preloaded:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->DisplayingContent:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    aput-object v1, v0, v5

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Done:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    aput-object v1, v0, v6

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->$VALUES:[Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->$VALUES:[Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {v0}, [Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    return-object v0
.end method
