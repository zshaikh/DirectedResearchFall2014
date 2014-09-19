.class Lcom/fusepowered/m1/android/DTOAdViewLayout;
.super Ljava/lang/Object;
.source "DTOAdViewLayout.java"


# instance fields
.field height:I

.field width:I

.field xWindowPosition:I
    .annotation runtime Lcom/fusepowered/m1/google/gson/annotations/SerializedName;
        value = "x"
    .end annotation
.end field

.field yWindowPosition:I
    .annotation runtime Lcom/fusepowered/m1/google/gson/annotations/SerializedName;
        value = "y"
    .end annotation
.end field


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/fusepowered/m1/android/DTOAdViewLayout;->xWindowPosition:I

    .line 10
    iput p2, p0, Lcom/fusepowered/m1/android/DTOAdViewLayout;->yWindowPosition:I

    .line 11
    iput p3, p0, Lcom/fusepowered/m1/android/DTOAdViewLayout;->width:I

    .line 12
    iput p4, p0, Lcom/fusepowered/m1/android/DTOAdViewLayout;->height:I

    .line 13
    return-void
.end method
