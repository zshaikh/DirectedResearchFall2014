.class public Lcom/twitter/android/api/TwitterStory$ArticleUrl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4adf84e808a0ac17L


# instance fields
.field public final displayUrl:Ljava/lang/String;

.field public final expandedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/api/TwitterStory$ArticleUrl;->displayUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/api/TwitterStory$ArticleUrl;->expandedUrl:Ljava/lang/String;

    return-void
.end method
