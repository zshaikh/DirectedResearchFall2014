.class public Lcom/dolphin/browser/bookmark/cb;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/cb;->a:J

    .line 10
    iput-object p3, p0, Lcom/dolphin/browser/bookmark/cb;->b:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/cb;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cb;->b:Ljava/lang/String;

    return-object v0
.end method
