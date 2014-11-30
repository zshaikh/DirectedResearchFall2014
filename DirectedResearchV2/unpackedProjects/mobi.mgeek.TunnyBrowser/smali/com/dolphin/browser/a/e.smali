.class public Lcom/dolphin/browser/a/e;
.super Lcom/dolphin/browser/a/a;
.source "ErrorAction.java"


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 13
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 14
    iput p2, p0, Lcom/dolphin/browser/a/e;->e:I

    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
