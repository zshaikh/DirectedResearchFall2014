.class public final enum Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;
.super Ljava/lang/Enum;
.source "PHContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/requests/content/PHContentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PHDismissType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AdSelfDismiss:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

.field public static final enum ApplicationBackgrounded:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

.field public static final enum CloseButton:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

.field private static final synthetic ENUM$VALUES:[Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    const-string v1, "AdSelfDismiss"

    invoke-direct {v0, v1, v2}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->AdSelfDismiss:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    .line 90
    new-instance v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    const-string v1, "CloseButton"

    invoke-direct {v0, v1, v3}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->CloseButton:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    .line 91
    new-instance v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    const-string v1, "ApplicationBackgrounded"

    invoke-direct {v0, v1, v4}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ApplicationBackgrounded:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->AdSelfDismiss:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    aput-object v1, v0, v2

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->CloseButton:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ApplicationBackgrounded:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    aput-object v1, v0, v4

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ENUM$VALUES:[Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->ENUM$VALUES:[Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    array-length v1, v0

    new-array v2, v1, [Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
