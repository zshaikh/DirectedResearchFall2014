.class public final Lcom/dolphin/browser/launcher/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final CellLayout:[I

.field public static final CellLayout_cellCountX:I = 0x0

.field public static final CellLayout_cellCountY:I = 0x1

.field public static final CellLayout_cellHeight:I = 0x4

.field public static final CellLayout_cellMaxCount:I = 0x2

.field public static final CellLayout_cellWidth:I = 0x3

.field public static final CellLayout_heightGap:I = 0x6

.field public static final CellLayout_widthGap:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/launcher/R$styleable;->CellLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
