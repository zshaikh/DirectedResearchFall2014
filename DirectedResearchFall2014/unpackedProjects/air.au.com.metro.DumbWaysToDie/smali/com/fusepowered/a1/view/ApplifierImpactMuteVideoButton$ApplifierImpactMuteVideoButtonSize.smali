.class public final enum Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;
.super Ljava/lang/Enum;
.source "ApplifierImpactMuteVideoButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplifierImpactMuteVideoButtonSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

.field public static final enum Large:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

.field public static final enum Medium:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

.field public static final enum Small:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    const-string v1, "Small"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Small:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    new-instance v0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    const-string v1, "Medium"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Medium:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    new-instance v0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    const-string v1, "Large"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Large:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Small:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Medium:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Large:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->ENUM$VALUES:[Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->ENUM$VALUES:[Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
