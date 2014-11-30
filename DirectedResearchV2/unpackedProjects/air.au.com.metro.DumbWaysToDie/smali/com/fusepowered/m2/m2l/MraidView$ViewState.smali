.class public final enum Lcom/fusepowered/m2/m2l/MraidView$ViewState;
.super Ljava/lang/Enum;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/MraidView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$ViewState;

.field public static final enum EXPANDED:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

.field public static final enum HIDDEN:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

.field public static final enum LOADING:Lcom/fusepowered/m2/m2l/MraidView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->LOADING:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 86
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/m2l/MraidView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->DEFAULT:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 87
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/m2/m2l/MraidView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->EXPANDED:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 88
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/m2/m2l/MraidView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->HIDDEN:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->LOADING:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->DEFAULT:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->EXPANDED:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->HIDDEN:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/MraidView$ViewState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/MraidView$ViewState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
