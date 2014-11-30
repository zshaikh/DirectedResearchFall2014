.class public Lb/a;
.super Ljava/lang/Object;
.source "AppLink.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lb/b;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lb/a;->a:Landroid/net/Uri;

    .line 92
    if-nez p2, :cond_0

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 95
    :cond_0
    iput-object p2, p0, Lb/a;->b:Ljava/util/List;

    .line 96
    iput-object p3, p0, Lb/a;->c:Landroid/net/Uri;

    .line 97
    return-void
.end method
