.class public final enum Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;
.super Ljava/lang/Enum;
.source "ApplifierImpactMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/view/ApplifierImpactMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplifierImpactMainViewAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BackButtonPressed:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

.field private static final synthetic ENUM$VALUES:[Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

.field public static final enum RequestRetryVideoPlay:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

.field public static final enum VideoEnd:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

.field public static final enum VideoSkipped:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

.field public static final enum VideoStart:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    const-string v1, "VideoStart"

    invoke-direct {v0, v1, v2}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoStart:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    new-instance v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    const-string v1, "VideoEnd"

    invoke-direct {v0, v1, v3}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoEnd:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    new-instance v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    const-string v1, "VideoSkipped"

    invoke-direct {v0, v1, v4}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoSkipped:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    new-instance v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    const-string v1, "BackButtonPressed"

    invoke-direct {v0, v1, v5}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->BackButtonPressed:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    new-instance v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    const-string v1, "RequestRetryVideoPlay"

    invoke-direct {v0, v1, v6}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->RequestRetryVideoPlay:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoStart:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoEnd:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoSkipped:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->BackButtonPressed:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->RequestRetryVideoPlay:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ENUM$VALUES:[Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    return-object p0
.end method

.method public static values()[Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ENUM$VALUES:[Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
