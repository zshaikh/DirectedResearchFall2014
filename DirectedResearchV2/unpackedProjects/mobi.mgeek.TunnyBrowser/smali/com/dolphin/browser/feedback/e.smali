.class public Lcom/dolphin/browser/feedback/e;
.super Ljava/lang/Object;
.source "EmailItemInfo.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/pm/ResolveInfo;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/dolphin/browser/feedback/e;->c:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/dolphin/browser/feedback/e;->d:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/dolphin/browser/feedback/e;->e:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/dolphin/browser/feedback/e;->a:Ljava/util/ArrayList;

    .line 21
    iput-object p5, p0, Lcom/dolphin/browser/feedback/e;->b:Landroid/content/pm/ResolveInfo;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/feedback/e;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/feedback/e;->b:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/feedback/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/feedback/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/feedback/e;->e:Ljava/lang/String;

    return-object v0
.end method
