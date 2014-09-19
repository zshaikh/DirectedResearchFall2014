.class final enum Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;
.super Ljava/lang/Enum;
.source "AdAlertGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/AdAlertGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ZigZagState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

.field public static final enum FAILED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

.field public static final enum FINISHED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

.field public static final enum GOING_LEFT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

.field public static final enum GOING_RIGHT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

.field public static final enum UNSET:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    const-string v1, "GOING_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    const-string v1, "GOING_LEFT"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
