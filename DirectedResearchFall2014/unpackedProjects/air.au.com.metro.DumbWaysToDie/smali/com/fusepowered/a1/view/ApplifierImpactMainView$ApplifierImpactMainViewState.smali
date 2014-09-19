.class public final enum Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;
.super Ljava/lang/Enum;
.source "ApplifierImpactMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/view/ApplifierImpactMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplifierImpactMainViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

.field public static final enum VideoPlayer:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

.field public static final enum WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    const-string v1, "WebView"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    new-instance v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    const-string v1, "VideoPlayer"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->ENUM$VALUES:[Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->ENUM$VALUES:[Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
