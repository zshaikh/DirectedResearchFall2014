.class public final enum Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;
.super Ljava/lang/Enum;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeCloseButtonStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_CONTROLLED:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

.field public static final enum ALWAYS_HIDDEN:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

.field public static final enum ALWAYS_VISIBLE:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    const-string v1, "ALWAYS_VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    .line 98
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    const-string v1, "ALWAYS_HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    .line 99
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    const-string v1, "AD_CONTROLLED"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
