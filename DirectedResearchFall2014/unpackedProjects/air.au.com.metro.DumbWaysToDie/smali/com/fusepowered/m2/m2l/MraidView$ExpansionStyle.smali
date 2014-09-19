.class public final enum Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;
.super Ljava/lang/Enum;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpansionStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

.field public static final enum ENABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->ENABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    .line 93
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->DISABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->ENABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->DISABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
