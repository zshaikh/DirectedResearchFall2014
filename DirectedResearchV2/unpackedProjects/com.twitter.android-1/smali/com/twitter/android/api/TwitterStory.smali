.class public Lcom/twitter/android/api/TwitterStory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x40b2d9af947221dfL


# instance fields
.field public final data:Lcom/twitter/android/api/TwitterStory$Data;

.field public final identifier:I

.field public final score:D

.field public final state:I

.field public final type:I

.field public final unread:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IDLcom/twitter/android/api/TwitterStory$Data;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/twitter/android/api/TwitterStory;->unread:Z

    iput-wide p2, p0, Lcom/twitter/android/api/TwitterStory;->score:D

    iput-object p4, p0, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->media:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v1, "photo"

    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->media:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$Media;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Media;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/twitter/android/api/TwitterStory;->type:I

    :goto_0
    iput v2, p0, Lcom/twitter/android/api/TwitterStory;->state:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput v2, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    :goto_1
    return-void

    :cond_0
    iput p1, p0, Lcom/twitter/android/api/TwitterStory;->type:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    goto :goto_1

    :pswitch_2
    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->articles:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
