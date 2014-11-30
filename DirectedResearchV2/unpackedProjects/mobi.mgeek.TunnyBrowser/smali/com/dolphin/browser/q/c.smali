.class public Lcom/dolphin/browser/q/c;
.super Ljava/lang/Object;
.source "SocialServiceRegistryEntry.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 21
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/q/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/dolphin/browser/q/c;->a:I

    .line 13
    iput-object p2, p0, Lcom/dolphin/browser/q/c;->b:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/dolphin/browser/q/c;->c:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/dolphin/browser/q/c;->d:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/dolphin/browser/q/c;->e:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/dolphin/browser/q/c;->f:Ljava/lang/String;

    .line 18
    return-void
.end method
