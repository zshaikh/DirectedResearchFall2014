.class public Lcom/dolphin/browser/gesture/q;
.super Ljava/lang/Object;
.source "GesturePoint.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:J


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/dolphin/browser/gesture/q;->a:F

    .line 34
    iput p2, p0, Lcom/dolphin/browser/gesture/q;->b:F

    .line 35
    iput-wide p3, p0, Lcom/dolphin/browser/gesture/q;->c:J

    .line 36
    return-void
.end method

.method static a(Ljava/io/DataInputStream;)Lcom/dolphin/browser/gesture/q;
    .locals 5

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 41
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 43
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 44
    new-instance v4, Lcom/dolphin/browser/gesture/q;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/dolphin/browser/gesture/q;-><init>(FFJ)V

    return-object v4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 49
    new-instance v0, Lcom/dolphin/browser/gesture/q;

    iget v1, p0, Lcom/dolphin/browser/gesture/q;->a:F

    iget v2, p0, Lcom/dolphin/browser/gesture/q;->b:F

    iget-wide v3, p0, Lcom/dolphin/browser/gesture/q;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/q;-><init>(FFJ)V

    return-object v0
.end method
