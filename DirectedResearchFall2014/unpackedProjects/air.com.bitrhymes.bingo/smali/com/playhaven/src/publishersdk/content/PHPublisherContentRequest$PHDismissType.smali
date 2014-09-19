.class public final enum Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;
.super Ljava/lang/Enum;
.source "PHPublisherContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PHDismissType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

.field public static final enum ApplicationTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

.field public static final enum CloseButtonTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

.field public static final enum ContentUnitTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

.field public static final enum NoContentTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    const-string v1, "ContentUnitTriggered"

    invoke-direct {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ContentUnitTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    .line 34
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    const-string v1, "CloseButtonTriggered"

    invoke-direct {v0, v1, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->CloseButtonTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    .line 35
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    const-string v1, "ApplicationTriggered"

    invoke-direct {v0, v1, v4}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ApplicationTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    .line 36
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    const-string v1, "NoContentTriggered"

    invoke-direct {v0, v1, v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->NoContentTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ContentUnitTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->CloseButtonTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->ApplicationTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->NoContentTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->$VALUES:[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->$VALUES:[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-virtual {v0}, [Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    return-object v0
.end method
