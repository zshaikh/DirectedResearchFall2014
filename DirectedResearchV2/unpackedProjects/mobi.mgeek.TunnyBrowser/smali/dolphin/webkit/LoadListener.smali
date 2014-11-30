.class Ldolphin/webkit/LoadListener;
.super Ldolphin/util/j;
.source "LoadListener.java"

# interfaces
.implements Ldolphin/net/http/l;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static final U:Ljava/util/regex/Pattern;

.field static final synthetic b:Z

.field private static c:I


# instance fields
.field private A:J

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:[B

.field private F:Z

.field private G:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private final I:Z

.field private final J:Z

.field private K:Z

.field private L:Ldolphin/net/http/m;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private O:Ldolphin/net/resource/f;

.field private P:Ldolphin/net/resource/f;

.field private Q:Z

.field private R:Ldolphin/webkit/er;

.field private S:I

.field private T:I

.field public a:J

.field private final d:Ldolphin/webkit/z;

.field private e:Ljava/lang/String;

.field private f:Ldolphin/net/e;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Ldolphin/net/c/d;

.field private k:Ldolphin/webkit/BrowserFrame;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private mNativeLoader:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Ldolphin/webkit/ab;

.field private t:Z

.field private u:Ldolphin/net/http/o;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ldolphin/net/http/SslError;

.field private y:Ldolphin/net/c/c;

.field private z:Ldolphin/net/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Ldolphin/webkit/LoadListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/LoadListener;->b:Z

    .line 1577
    const-string v0, "^((?:[xX]-)?[a-zA-Z\\*]+/[\\w\\+\\*-]+[\\.[\\w\\+-]+]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/LoadListener;->U:Ljava/util/regex/Pattern;

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ldolphin/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;Ldolphin/net/c/d;)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    .line 86
    new-instance v0, Ldolphin/webkit/z;

    invoke-direct {v0}, Ldolphin/webkit/z;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->d:Ldolphin/webkit/z;

    .line 106
    iput-boolean v1, p0, Ldolphin/webkit/LoadListener;->t:Z

    .line 108
    iput v1, p0, Ldolphin/webkit/LoadListener;->v:I

    .line 172
    sget-boolean v0, Ldolphin/webkit/LoadListener;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    .line 179
    invoke-virtual {p0, p3}, Ldolphin/webkit/LoadListener;->b(Ljava/lang/String;)V

    .line 180
    iput p4, p0, Ldolphin/webkit/LoadListener;->mNativeLoader:I

    .line 181
    iput-boolean p5, p0, Ldolphin/webkit/LoadListener;->F:Z

    .line 182
    if-eqz p5, :cond_1

    .line 183
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->G:Ljava/util/Vector;

    .line 185
    :cond_1
    iput-boolean p6, p0, Ldolphin/webkit/LoadListener;->H:Z

    .line 186
    iput-boolean p7, p0, Ldolphin/webkit/LoadListener;->I:Z

    .line 187
    iput-boolean p8, p0, Ldolphin/webkit/LoadListener;->J:Z

    .line 188
    iput-wide p9, p0, Ldolphin/webkit/LoadListener;->A:J

    .line 189
    iput-object p11, p0, Ldolphin/webkit/LoadListener;->M:Ljava/lang/String;

    .line 190
    iput-object p12, p0, Ldolphin/webkit/LoadListener;->N:Ljava/lang/String;

    .line 191
    iput-object p13, p0, Ldolphin/webkit/LoadListener;->j:Ldolphin/net/c/d;

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Ldolphin/webkit/LoadListener;->S:I

    .line 194
    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    const/16 v4, 0x96

    const/16 v2, 0x8c

    const/4 v3, 0x1

    .line 698
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-eqz v0, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    sparse-switch v0, :sswitch_data_0

    .line 777
    :cond_2
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->q()V

    .line 778
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->u()V

    goto :goto_0

    .line 703
    :sswitch_0
    iput-boolean v3, p0, Ldolphin/webkit/LoadListener;->g:Z

    .line 708
    :sswitch_1
    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x133

    if-ne v0, v1, :cond_5

    .line 709
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    invoke-virtual {v0}, Ldolphin/net/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    invoke-virtual {p0, v4}, Ldolphin/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    .line 722
    :goto_1
    const/4 v0, 0x4

    iget v1, p0, Ldolphin/webkit/LoadListener;->S:I

    if-ne v0, v1, :cond_0

    .line 723
    const/4 v0, 0x5

    iput v0, p0, Ldolphin/webkit/LoadListener;->S:I

    goto :goto_0

    .line 713
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->C:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->C:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 714
    invoke-virtual {p0, v4}, Ldolphin/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    goto :goto_1

    .line 717
    :cond_4
    invoke-virtual {p0, v2}, Ldolphin/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    goto :goto_1

    .line 720
    :cond_5
    invoke-virtual {p0, v2}, Ldolphin/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    goto :goto_1

    .line 732
    :sswitch_2
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/ev;->a(Landroid/content/Context;)Ldolphin/webkit/ev;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ev;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 737
    :cond_6
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->r:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->M:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->N:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 738
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/ev;->a(Landroid/content/Context;)Ldolphin/webkit/ev;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ev;->c()Ljava/lang/String;

    move-result-object v0

    .line 741
    :goto_2
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v1}, Ldolphin/net/http/o;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/LoadListener;->M:Ljava/lang/String;

    iget-object v3, p0, Ldolphin/webkit/LoadListener;->N:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Ldolphin/webkit/dw;->a(Ldolphin/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->M:Ljava/lang/String;

    iget-object v1, p0, Ldolphin/webkit/LoadListener;->N:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/LoadListener;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    :cond_7
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->f:Ldolphin/net/e;

    invoke-virtual {v0}, Ldolphin/net/e;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 745
    :cond_8
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/ev;->a(Landroid/content/Context;)Ldolphin/webkit/ev;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldolphin/webkit/ev;->b(Ldolphin/webkit/LoadListener;)V

    goto/16 :goto_0

    .line 755
    :sswitch_3
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    if-eqz v0, :cond_2

    .line 756
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 757
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    invoke-virtual {v0}, Ldolphin/webkit/ab;->b()V

    .line 764
    :goto_3
    iput-boolean v3, p0, Ldolphin/webkit/LoadListener;->t:Z

    goto/16 :goto_0

    .line 760
    :cond_9
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v0

    const/16 v1, 0x65

    iget-object v2, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 700
    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x130 -> :sswitch_3
        0x133 -> :sswitch_1
        0x191 -> :sswitch_2
        0x197 -> :sswitch_2
    .end sparse-switch
.end method

.method private B()V
    .locals 2

    .prologue
    .line 1141
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-eqz v0, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x12d

    if-lt v0, v1, :cond_2

    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x12f

    if-le v0, v1, :cond_0

    :cond_2
    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    if-nez v0, :cond_0

    .line 1154
    :cond_3
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->C()V

    goto :goto_0
.end method

.method private C()V
    .locals 1

    .prologue
    .line 1159
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->H:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    invoke-static {v0}, Ldolphin/webkit/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    if-nez v0, :cond_0

    .line 1173
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->D()V

    goto :goto_0
.end method

.method private D()V
    .locals 1

    .prologue
    .line 1177
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->E()I

    move-result v0

    .line 1179
    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->nativeReceivedResponse(I)V

    .line 1180
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/LoadListener;->B:Z

    .line 1181
    return-void
.end method

.method private E()I
    .locals 8

    .prologue
    .line 1193
    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    if-eqz v0, :cond_2

    const/16 v2, 0xc8

    .line 1196
    :goto_0
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->K:Z

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1199
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1200
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1201
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1202
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1204
    const-string v1, "video"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    const-string v1, "cachevideo/"

    .line 1206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1207
    iput-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    .line 1213
    :cond_0
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ldolphin/webkit/LoadListener;->p:Ljava/lang/String;

    iget-object v4, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    iget-wide v5, p0, Ldolphin/webkit/LoadListener;->a:J

    iget-object v7, p0, Ldolphin/webkit/LoadListener;->m:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ldolphin/webkit/LoadListener;->nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v0

    .line 1216
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->L:Ldolphin/net/http/m;

    if-eqz v1, :cond_1

    .line 1217
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->L:Ldolphin/net/http/m;

    new-instance v2, Ldolphin/webkit/eq;

    invoke-direct {v2, p0, v0}, Ldolphin/webkit/eq;-><init>(Ldolphin/webkit/LoadListener;I)V

    invoke-virtual {v1, v2}, Ldolphin/net/http/m;->a(Ldolphin/net/http/n;)V

    .line 1223
    :cond_1
    return v0

    .line 1193
    :cond_2
    iget v2, p0, Ldolphin/webkit/LoadListener;->o:I

    goto :goto_0
.end method

.method private F()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1231
    iget-boolean v1, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-eqz v1, :cond_0

    .line 1283
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-boolean v1, p0, Ldolphin/webkit/LoadListener;->B:Z

    if-nez v1, :cond_1

    .line 1233
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->D()V

    .line 1236
    :cond_1
    iget-boolean v1, p0, Ldolphin/webkit/LoadListener;->H:Z

    if-eqz v1, :cond_5

    .line 1237
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    invoke-static {v1}, Ldolphin/webkit/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    if-eqz v1, :cond_5

    .line 1241
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->d:Ldolphin/webkit/z;

    monitor-enter v2

    .line 1245
    :try_start_0
    iget-object v3, p0, Ldolphin/webkit/LoadListener;->d:Ldolphin/webkit/z;

    invoke-virtual {v3}, Ldolphin/webkit/z;->c()I

    move-result v3

    new-array v3, v3, [B

    .line 1248
    :goto_1
    iget-object v4, p0, Ldolphin/webkit/LoadListener;->d:Ldolphin/webkit/z;

    invoke-virtual {v4}, Ldolphin/webkit/z;->a()Ldolphin/webkit/aa;

    move-result-object v4

    .line 1249
    if-nez v4, :cond_2

    .line 1257
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Ldolphin/webkit/ax;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 1258
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->l()V

    .line 1259
    monitor-exit v2

    goto :goto_0

    .line 1260
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1251
    :cond_2
    :try_start_1
    iget v5, v4, Ldolphin/webkit/aa;->b:I

    if-eqz v5, :cond_3

    .line 1252
    iget-object v5, v4, Ldolphin/webkit/aa;->a:[B

    const/4 v6, 0x0

    iget v7, v4, Ldolphin/webkit/aa;->b:I

    invoke-static {v5, v6, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1253
    iget v5, v4, Ldolphin/webkit/aa;->b:I

    add-int/2addr v0, v5

    .line 1255
    :cond_3
    invoke-virtual {v4}, Ldolphin/webkit/aa;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1272
    :cond_4
    iget v1, v0, Ldolphin/webkit/aa;->b:I

    if-eqz v1, :cond_6

    .line 1273
    iget-object v1, v0, Ldolphin/webkit/aa;->a:[B

    iget v2, v0, Ldolphin/webkit/aa;->b:I

    invoke-direct {p0, v1, v2}, Ldolphin/webkit/LoadListener;->nativeAddData([BI)V

    .line 1274
    new-instance v1, Ldolphin/webkit/ky;

    invoke-direct {v1}, Ldolphin/webkit/ky;-><init>()V

    .line 1275
    iput-object p0, v1, Ldolphin/webkit/ky;->a:Ldolphin/webkit/LoadListener;

    .line 1276
    iput-object v0, v1, Ldolphin/webkit/ky;->b:Ldolphin/webkit/aa;

    .line 1277
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v0

    const/16 v2, 0x69

    invoke-virtual {v0, v2, v1}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1269
    :cond_5
    :goto_2
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->d:Ldolphin/webkit/z;

    invoke-virtual {v0}, Ldolphin/webkit/z;->a()Ldolphin/webkit/aa;

    move-result-object v0

    .line 1270
    if-nez v0, :cond_4

    goto :goto_0

    .line 1280
    :cond_6
    invoke-virtual {v0}, Ldolphin/webkit/aa;->a()V

    goto :goto_2
.end method

.method private G()I
    .locals 1

    .prologue
    .line 1324
    iget v0, p0, Ldolphin/webkit/LoadListener;->v:I

    return v0
.end method

.method private H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->w:Ljava/lang/String;

    return-object v0
.end method

.method private I()V
    .locals 6

    .prologue
    const/16 v5, -0xc

    .line 1427
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-eqz v0, :cond_1

    .line 1571
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget v0, p0, Ldolphin/webkit/LoadListener;->T:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 1434
    const/16 v0, -0x9

    sget v1, Ldolphin/webkit/R$string;->httpErrorRedirectLoop:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/LoadListener;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 1439
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->L:Ldolphin/net/http/m;

    invoke-virtual {v0}, Ldolphin/net/http/m;->f()Ljava/lang/String;

    move-result-object v0

    .line 1440
    if-eqz v0, :cond_c

    .line 1441
    iget v1, p0, Ldolphin/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_0

    .line 1452
    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1459
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    :goto_1
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->E()I

    move-result v1

    .line 1465
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Ldolphin/webkit/LoadListener;->nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1469
    iget-boolean v1, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-nez v1, :cond_0

    .line 1472
    if-nez v0, :cond_3

    .line 1473
    const-string v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirection failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/LoadListener;->L:Ldolphin/net/http/m;

    invoke-virtual {v2}, Ldolphin/net/http/m;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->cancel()V

    goto :goto_0

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 1477
    :cond_3
    invoke-static {v0}, Ldolphin/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Ldolphin/webkit/R$string;->open_permission_deny:I

    invoke-static {v2}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1481
    iget-boolean v1, p0, Ldolphin/webkit/LoadListener;->B:Z

    if-nez v1, :cond_4

    .line 1482
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->D()V

    .line 1484
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v1, v0}, Ldolphin/webkit/LoadListener;->nativeAddData([BI)V

    .line 1485
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->nativeFinished()V

    .line 1486
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->z()V

    goto/16 :goto_0

    .line 1492
    :cond_5
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->G()I

    move-result v1

    if-nez v1, :cond_9

    .line 1493
    new-instance v1, Ldolphin/webkit/la;

    invoke-direct {v1}, Ldolphin/webkit/la;-><init>()V

    .line 1494
    iput-object p0, v1, Ldolphin/webkit/la;->a:Ldolphin/webkit/LoadListener;

    .line 1495
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    iput-object v2, v1, Ldolphin/webkit/la;->b:Ljava/lang/String;

    .line 1496
    iget-wide v2, p0, Ldolphin/webkit/LoadListener;->A:J

    iput-wide v2, v1, Ldolphin/webkit/la;->c:J

    .line 1497
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v2

    const/16 v3, 0x6a

    invoke-virtual {v2, v3, v1}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1505
    :goto_2
    iput-object v0, p0, Ldolphin/webkit/LoadListener;->h:Ljava/lang/String;

    .line 1507
    invoke-virtual {p0, v0}, Ldolphin/webkit/LoadListener;->b(Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->D:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 1511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->D:Ljava/util/Map;

    .line 1513
    :cond_6
    const/4 v0, 0x0

    .line 1514
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    if-eqz v1, :cond_7

    .line 1517
    iget v0, p0, Ldolphin/webkit/LoadListener;->T:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/webkit/LoadListener;->T:I

    .line 1518
    const/4 v0, 0x1

    .line 1520
    :cond_7
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->D:Ljava/util/Map;

    invoke-virtual {p0, v1}, Ldolphin/webkit/LoadListener;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1523
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    if-eqz v1, :cond_a

    .line 1525
    :try_start_1
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    iget-object v2, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    iget v3, p0, Ldolphin/webkit/LoadListener;->o:I

    iget-object v4, p0, Ldolphin/webkit/LoadListener;->D:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Ldolphin/net/c/c;->a(Ljava/lang/String;ILjava/util/Map;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1549
    :cond_8
    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    iget v1, p0, Ldolphin/webkit/LoadListener;->T:I

    invoke-virtual {v0, v1}, Ldolphin/net/c/c;->a(I)V

    goto/16 :goto_0

    .line 1500
    :cond_9
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2, p0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1527
    :catch_1
    move-exception v0

    .line 1528
    const-string v1, "webkit"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    sget v0, Ldolphin/webkit/R$string;->httpErrorBadUrl:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Ldolphin/webkit/LoadListener;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1539
    :cond_a
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldolphin/webkit/ev;->a(Landroid/content/Context;)Ldolphin/webkit/ev;

    move-result-object v1

    .line 1540
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->C:Ljava/lang/String;

    iget-object v3, p0, Ldolphin/webkit/LoadListener;->D:Ljava/util/Map;

    iget-object v4, p0, Ldolphin/webkit/LoadListener;->E:[B

    invoke-virtual {v1, v2, v3, v4, p0}, Ldolphin/webkit/ev;->a(Ljava/lang/String;Ljava/util/Map;[BLdolphin/webkit/LoadListener;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1544
    sget v0, Ldolphin/webkit/R$string;->httpErrorBadUrl:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Ldolphin/webkit/LoadListener;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1555
    :cond_b
    if-nez v0, :cond_0

    .line 1559
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    invoke-virtual {v0}, Ldolphin/net/c/c;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/webkit/LoadListener;->T:I

    goto/16 :goto_0

    .line 1562
    :cond_c
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->C()V

    .line 1563
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->F()V

    .line 1564
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->u()V

    goto/16 :goto_0
.end method

.method private J()Z
    .locals 2

    .prologue
    .line 1723
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    if-nez v0, :cond_0

    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x131

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private K()V
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    invoke-static {v0}, Ldolphin/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1789
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->cancel()V

    .line 1790
    sget v0, Ldolphin/webkit/R$string;->httpErrorBadUrl:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1791
    const/16 v1, -0xc

    invoke-direct {p0, v1, v0}, Ldolphin/webkit/LoadListener;->b(ILjava/lang/String;)V

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1796
    :cond_1
    const-string v0, "text/html"

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    .line 1797
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    if-eqz v0, :cond_0

    .line 1799
    iput-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1822
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->F:Z

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->G:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1827
    :goto_0
    return-void

    .line 1825
    :cond_0
    invoke-virtual {p0, p1}, Ldolphin/webkit/LoadListener;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/LoadListener;->nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(C)Z
    .locals 1

    .prologue
    .line 1393
    const/16 v0, 0x7f

    if-lt p1, v0, :cond_0

    .line 1394
    const/4 v0, 0x1

    .line 1396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(IIILjava/lang/String;)V
    .locals 6

    .prologue
    const/16 v1, 0x190

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 578
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-eqz v0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    if-lt p3, v1, :cond_2

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->P:Ldolphin/net/resource/f;

    if-eqz v0, :cond_2

    .line 581
    const-string v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load intercepted resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/LoadListener;->P:Ldolphin/net/resource/f;

    iget-object v2, v2, Ldolphin/net/resource/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " REASON : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Retrying without interception..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/ev;->a(Landroid/content/Context;)Ldolphin/webkit/ev;

    move-result-object v0

    .line 583
    invoke-virtual {p0, v4}, Ldolphin/webkit/LoadListener;->c(Z)V

    .line 584
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->O:Ldolphin/net/resource/f;

    iget-object v1, v1, Ldolphin/net/resource/f;->a:Ljava/lang/String;

    iget-object v2, p0, Ldolphin/webkit/LoadListener;->O:Ldolphin/net/resource/f;

    iget-object v2, v2, Ldolphin/net/resource/f;->d:Ljava/util/Map;

    iget-object v3, p0, Ldolphin/webkit/LoadListener;->O:Ldolphin/net/resource/f;

    iget-object v3, v3, Ldolphin/net/resource/f;->e:[B

    invoke-virtual {v0, v1, v2, v3, p0}, Ldolphin/webkit/ev;->a(Ljava/lang/String;Ljava/util/Map;[BLdolphin/webkit/LoadListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    const/16 v0, -0xc

    sget v1, Ldolphin/webkit/R$string;->httpErrorBadUrl:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/LoadListener;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_2
    if-lt p3, v1, :cond_3

    .line 593
    const-string v0, "webkit"

    const-string v1, "HTTP %d.%d %d/%s <- %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_3
    iput p3, p0, Ldolphin/webkit/LoadListener;->o:I

    .line 596
    iput-object p4, p0, Ldolphin/webkit/LoadListener;->p:Ljava/lang/String;

    .line 597
    iput-boolean v5, p0, Ldolphin/webkit/LoadListener;->g:Z

    goto/16 :goto_0
.end method

.method private b(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 645
    iput p1, p0, Ldolphin/webkit/LoadListener;->v:I

    .line 646
    iput-object p2, p0, Ldolphin/webkit/LoadListener;->w:Ljava/lang/String;

    .line 647
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->q()V

    .line 648
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->v()V

    .line 649
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->u()V

    .line 650
    return-void
.end method

.method private b(Landroid/net/http/SslCertificate;)V
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->I:Z

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0, p1}, Ldolphin/webkit/BrowserFrame;->a(Landroid/net/http/SslCertificate;)V

    .line 625
    :cond_0
    return-void
.end method

.method private b(Ldolphin/net/http/SslError;)V
    .locals 2

    .prologue
    .line 880
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-nez v0, :cond_1

    .line 881
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->x:Ldolphin/net/http/SslError;

    .line 882
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/ev;->a(Landroid/content/Context;)Ldolphin/webkit/ev;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldolphin/webkit/ev;->a(Ldolphin/webkit/LoadListener;)V

    .line 886
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->z:Ldolphin/net/c/c;

    .line 887
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->z:Ldolphin/net/c/c;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->z:Ldolphin/net/c/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldolphin/net/c/c;->b(Z)V

    goto :goto_0
.end method

.method private b(Ldolphin/net/http/m;)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/16 v8, 0x197

    const/16 v7, 0x191

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 397
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-eqz v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 402
    :cond_0
    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v3, 0xce

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->L:Ldolphin/net/http/m;

    if-eqz v0, :cond_1

    .line 404
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 409
    :cond_1
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->L:Ldolphin/net/http/m;

    .line 411
    invoke-virtual {p1}, Ldolphin/net/http/m;->b()J

    move-result-wide v3

    .line 412
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_b

    .line 413
    iput-wide v3, p0, Ldolphin/webkit/LoadListener;->a:J

    .line 418
    :goto_1
    invoke-virtual {p1}, Ldolphin/net/http/m;->d()Ljava/lang/String;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_c

    .line 420
    invoke-virtual {p0, v0}, Ldolphin/webkit/LoadListener;->a(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Ldolphin/webkit/MimeTypeMap;->a()Ldolphin/webkit/MimeTypeMap;

    move-result-object v0

    iget-object v3, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    iget-object v4, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ldolphin/net/http/m;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Ldolphin/webkit/MimeTypeMap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    .line 432
    :goto_2
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->H:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->I:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->J:Z

    if-eqz v0, :cond_2

    const-string v0, "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

    iget-object v3, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    const-string v3, "application/xhtml+xml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    iget-object v3, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 439
    if-eqz v3, :cond_2

    iget-object v4, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 444
    :try_start_0
    iget-object v3, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 445
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->l()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 454
    :cond_2
    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    if-eq v0, v7, :cond_3

    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    if-ne v0, v8, :cond_d

    :cond_3
    move v0, v2

    .line 457
    :goto_3
    iget v3, p0, Ldolphin/webkit/LoadListener;->o:I

    if-ne v3, v8, :cond_e

    move v3, v2

    .line 460
    :goto_4
    iput-boolean v1, p0, Ldolphin/webkit/LoadListener;->r:Z

    .line 463
    iget-object v4, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    if-eqz v4, :cond_4

    .line 466
    if-eqz v0, :cond_f

    iget-object v4, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v4}, Ldolphin/net/http/o;->a()Z

    move-result v4

    if-ne v3, v4, :cond_f

    :goto_5
    iput-boolean v2, p0, Ldolphin/webkit/LoadListener;->r:Z

    .line 471
    iget-boolean v1, p0, Ldolphin/webkit/LoadListener;->r:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v1}, Ldolphin/net/http/o;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 472
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-static {v1}, Ldolphin/webkit/ev;->a(Landroid/content/Context;)Ldolphin/webkit/ev;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Ldolphin/webkit/ev;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 477
    monitor-enter v1

    .line 480
    :try_start_1
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v2}, Ldolphin/net/http/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldolphin/webkit/ev;->a(Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v2}, Ldolphin/net/http/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldolphin/webkit/ev;->b(Ljava/lang/String;)V

    .line 482
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    .line 490
    if-eqz v0, :cond_5

    .line 491
    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    if-ne v0, v7, :cond_10

    .line 492
    invoke-virtual {p1}, Ldolphin/net/http/m;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->d(Ljava/lang/String;)Ldolphin/net/http/o;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    .line 506
    :cond_5
    :goto_6
    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_6

    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_6

    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_6

    iget v0, p0, Ldolphin/webkit/LoadListener;->o:I

    const/16 v1, 0x133

    if-ne v0, v1, :cond_a

    :cond_6
    iget v0, p0, Ldolphin/webkit/LoadListener;->mNativeLoader:I

    if-nez v0, :cond_7

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->R:Ldolphin/webkit/er;

    if-eqz v0, :cond_a

    .line 514
    :cond_7
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->t:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    invoke-virtual {v0}, Ldolphin/net/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Ldolphin/webkit/LoadListener;->A:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    invoke-virtual {v0}, Ldolphin/net/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 518
    new-instance v0, Ldolphin/webkit/kx;

    invoke-direct {v0}, Ldolphin/webkit/kx;-><init>()V

    .line 519
    iput-object p0, v0, Ldolphin/webkit/kx;->a:Ldolphin/webkit/LoadListener;

    .line 520
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    iput-object v1, v0, Ldolphin/webkit/kx;->b:Ljava/lang/String;

    .line 521
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    iput-object v1, v0, Ldolphin/webkit/kx;->c:Ljava/lang/String;

    .line 522
    iget v1, p0, Ldolphin/webkit/LoadListener;->o:I

    iput v1, v0, Ldolphin/webkit/kx;->d:I

    .line 523
    iget-wide v1, p0, Ldolphin/webkit/LoadListener;->A:J

    iput-wide v1, v0, Ldolphin/webkit/kx;->e:J

    .line 524
    iput-object p1, v0, Ldolphin/webkit/kx;->f:Ldolphin/net/http/m;

    .line 525
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 528
    :cond_9
    new-instance v0, Ldolphin/webkit/kz;

    invoke-direct {v0}, Ldolphin/webkit/kz;-><init>()V

    .line 529
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->m:Ljava/lang/String;

    iput-object v1, v0, Ldolphin/webkit/kz;->b:Ljava/lang/String;

    .line 530
    iput-object p0, v0, Ldolphin/webkit/kz;->a:Ldolphin/webkit/LoadListener;

    .line 531
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 534
    :cond_a
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->B()V

    goto/16 :goto_0

    .line 415
    :cond_b
    iput-wide v9, p0, Ldolphin/webkit/LoadListener;->a:J

    goto/16 :goto_1

    .line 429
    :cond_c
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->K()V

    goto/16 :goto_2

    :cond_d
    move v0, v1

    .line 454
    goto/16 :goto_3

    :cond_e
    move v3, v1

    .line 457
    goto/16 :goto_4

    :cond_f
    move v2, v1

    .line 466
    goto/16 :goto_5

    .line 482
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 495
    :cond_10
    invoke-virtual {p1}, Ldolphin/net/http/m;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->d(Ljava/lang/String;)Ldolphin/net/http/o;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    .line 498
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    if-eqz v0, :cond_5

    .line 500
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->b()V

    goto/16 :goto_6
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1401
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1402
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1403
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Ldolphin/webkit/LoadListener;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1404
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1402
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1407
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1410
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ldolphin/net/http/o;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1645
    if-eqz p1, :cond_b

    .line 1646
    const/16 v9, 0x100

    .line 1648
    new-array v10, v9, [I

    .line 1650
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1651
    if-lez v8, :cond_3

    move v2, v4

    move v6, v4

    move v7, v4

    .line 1654
    :goto_0
    if-ge v2, v8, :cond_4

    if-ge v7, v9, :cond_4

    .line 1655
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x22

    if-ne v0, v3, :cond_1

    .line 1656
    if-nez v6, :cond_0

    move v0, v1

    :goto_1
    move v3, v7

    .line 1654
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v0

    move v7, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 1656
    goto :goto_1

    .line 1658
    :cond_1
    if-nez v6, :cond_c

    .line 1659
    const-string v3, "Basic"

    const-string v0, "Basic"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1662
    add-int/lit8 v0, v7, 0x1

    aput v2, v10, v7

    move v3, v0

    move v0, v6

    .line 1663
    goto :goto_2

    .line 1666
    :cond_2
    const-string v3, "Digest"

    const-string v0, "Digest"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1669
    add-int/lit8 v0, v7, 0x1

    aput v2, v10, v7

    move v3, v0

    move v0, v6

    goto :goto_2

    :cond_3
    move v7, v4

    .line 1677
    :cond_4
    if-lez v7, :cond_b

    move v6, v4

    .line 1679
    :goto_3
    if-ge v6, v7, :cond_8

    .line 1680
    aget v2, v10, v6

    const-string v3, "Digest"

    const-string v0, "Digest"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1683
    aget v2, v10, v6

    add-int/lit8 v0, v6, 0x1

    if-ge v0, v7, :cond_6

    add-int/lit8 v0, v6, 0x1

    aget v0, v10, v0

    :goto_4
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1686
    new-instance v0, Ldolphin/net/http/o;

    invoke-direct {v0, v2}, Ldolphin/net/http/o;-><init>(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v0}, Ldolphin/net/http/o;->m()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1712
    :cond_5
    :goto_5
    return-object v0

    :cond_6
    move v0, v8

    .line 1683
    goto :goto_4

    .line 1679
    :cond_7
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_8
    move v6, v4

    .line 1695
    :goto_6
    if-ge v6, v7, :cond_b

    .line 1696
    aget v2, v10, v6

    const-string v3, "Basic"

    const-string v0, "Basic"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1699
    aget v2, v10, v6

    add-int/lit8 v0, v6, 0x1

    if-ge v0, v7, :cond_a

    add-int/lit8 v0, v6, 0x1

    aget v0, v10, v0

    :goto_7
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1702
    new-instance v0, Ldolphin/net/http/o;

    invoke-direct {v0, v2}, Ldolphin/net/http/o;-><init>(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v0}, Ldolphin/net/http/o;->m()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1695
    :cond_9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_6

    :cond_a
    move v0, v8

    .line 1699
    goto :goto_7

    .line 1712
    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    move v0, v6

    move v3, v7

    goto/16 :goto_2
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1813
    invoke-static {}, Ldolphin/webkit/MimeTypeMap;->a()Ldolphin/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Ldolphin/webkit/MimeTypeMap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoadListener(Landroid/content/Context;Ldolphin/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;Ldolphin/net/c/d;)Ldolphin/webkit/LoadListener;
    .locals 14
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 154
    sget v0, Ldolphin/webkit/LoadListener;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ldolphin/webkit/LoadListener;->c:I

    .line 155
    new-instance v0, Ldolphin/webkit/LoadListener;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Ldolphin/webkit/LoadListener;-><init>(Landroid/content/Context;Ldolphin/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;Ldolphin/net/c/d;)V

    return-object v0
.end method

.method public static getNativeLoaderCount()I
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 163
    sget v0, Ldolphin/webkit/LoadListener;->c:I

    return v0
.end method

.method private native nativeAddData([BI)V
.end method

.method private native nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method

.method private native nativeError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeFinished()V
.end method

.method private native nativeReceivedResponse(I)V
.end method

.method private native nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method static willLoadFromCache(Ljava/lang/String;J)Z
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1100
    sget-boolean v0, Ldolphin/webkit/LoadListener;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1101
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;JLjava/util/Map;)Ldolphin/webkit/CacheManager$CacheResult;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1107
    :goto_0
    return v0

    .line 1101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    sget v0, Ldolphin/webkit/LoadListener;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ldolphin/webkit/LoadListener;->c:I

    .line 202
    iput v1, p0, Ldolphin/webkit/LoadListener;->mNativeLoader:I

    .line 203
    iput-boolean v1, p0, Ldolphin/webkit/LoadListener;->B:Z

    .line 204
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 693
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ldolphin/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    .line 694
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 1777
    iput p1, p0, Ldolphin/webkit/LoadListener;->S:I

    .line 1778
    return-void
.end method

.method public a(IIILjava/lang/String;)V
    .locals 3

    .prologue
    .line 563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 564
    const-string v1, "major"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v1, "minor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v1, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v1, "reason"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->d:Ldolphin/webkit/z;

    invoke-virtual {v1}, Ldolphin/webkit/z;->d()V

    .line 570
    const-string v1, ""

    iput-object v1, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    .line 571
    const-string v1, ""

    iput-object v1, p0, Ldolphin/webkit/LoadListener;->m:Ljava/lang/String;

    .line 572
    const-string v1, ""

    iput-object v1, p0, Ldolphin/webkit/LoadListener;->n:Ljava/lang/String;

    .line 573
    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    .line 574
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 640
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Ldolphin/webkit/LoadListener;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    .line 641
    return-void
.end method

.method public a(Landroid/net/http/SslCertificate;)V
    .locals 1

    .prologue
    .line 615
    const/16 v0, 0xaa

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    .line 616
    return-void
.end method

.method a(Ldolphin/net/c/c;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    .line 1055
    return-void
.end method

.method public a(Ldolphin/net/http/m;)V
    .locals 5

    .prologue
    .line 380
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-eqz v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1}, Ldolphin/net/http/m;->o()Ljava/util/ArrayList;

    move-result-object v2

    .line 382
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 383
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v3

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->f:Ldolphin/net/e;

    invoke-virtual {v0}, Ldolphin/net/e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ldolphin/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 385
    :cond_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method a(Ldolphin/net/resource/f;)V
    .locals 0

    .prologue
    .line 1761
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->P:Ldolphin/net/resource/f;

    .line 1762
    return-void
.end method

.method public a(Ldolphin/webkit/CacheManager$CacheResult;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->R:Ldolphin/webkit/er;

    if-eqz v0, :cond_0

    .line 225
    const/16 v0, 0x83

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    .line 227
    :cond_0
    return-void
.end method

.method a(Ldolphin/webkit/ab;)V
    .locals 1

    .prologue
    .line 784
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/LoadListener;->t:Z

    .line 786
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v2, 0x3b

    .line 1586
    if-eqz p1, :cond_2

    .line 1587
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1588
    if-ltz v0, :cond_4

    .line 1589
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    .line 1591
    const/16 v1, 0x3d

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1592
    if-lez v1, :cond_3

    .line 1593
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1594
    if-ge v0, v1, :cond_0

    .line 1595
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1597
    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/LoadListener;->m:Ljava/lang/String;

    .line 1602
    :goto_0
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/LoadListener;->m:Ljava/lang/String;

    .line 1606
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->m:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/LoadListener;->m:Ljava/lang/String;

    .line 1608
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1612
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->n:Ljava/lang/String;

    .line 1620
    :cond_1
    :goto_1
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    .line 1623
    :try_start_0
    sget-object v0, Ldolphin/webkit/LoadListener;->U:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1624
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1625
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    :cond_2
    :goto_2
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    .line 1635
    return-void

    .line 1599
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/LoadListener;->m:Ljava/lang/String;

    goto :goto_0

    .line 1616
    :cond_4
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    goto :goto_1

    .line 1627
    :cond_5
    :try_start_1
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->K()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->K()V

    goto :goto_2
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 942
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 943
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/LoadListener;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :goto_0
    return-void

    .line 946
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->F()V

    .line 947
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->u()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 990
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->C:Ljava/lang/String;

    .line 991
    iput-object p2, p0, Ldolphin/webkit/LoadListener;->D:Ljava/util/Map;

    .line 992
    iput-object p3, p0, Ldolphin/webkit/LoadListener;->E:[B

    .line 993
    const/4 v0, 0x2

    iput v0, p0, Ldolphin/webkit/LoadListener;->S:I

    .line 994
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Ldolphin/webkit/LoadListener;->K:Z

    .line 232
    return-void
.end method

.method public a([BI)V
    .locals 4

    .prologue
    .line 672
    .line 673
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->d:Ldolphin/webkit/z;

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->d:Ldolphin/webkit/z;

    invoke-virtual {v0}, Ldolphin/webkit/z;->b()Z

    move-result v0

    .line 675
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->d:Ldolphin/webkit/z;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Ldolphin/webkit/z;->a([BII)V

    .line 676
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    if-eqz v0, :cond_0

    .line 679
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Ldolphin/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    .line 681
    :cond_0
    return-void

    .line 676
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ldolphin/net/http/SslError;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 857
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    invoke-static {v2}, Ldolphin/webkit/ev;->a(Landroid/content/Context;)Ldolphin/webkit/ev;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ldolphin/webkit/ev;->a(Ldolphin/webkit/LoadListener;Ldolphin/net/http/SslError;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    :cond_0
    :goto_0
    return v0

    .line 862
    :cond_1
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 863
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    invoke-virtual {v2, v1}, Ldolphin/net/c/c;->b(Z)V

    goto :goto_0

    .line 866
    :cond_2
    const/16 v2, 0xb4

    invoke-virtual {p0, v2, p1}, Ldolphin/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Ldolphin/webkit/LoadListener;->a(Landroid/os/Message;)V

    .line 872
    iget-boolean v2, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-nez v2, :cond_3

    .line 873
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    iput-object v2, p0, Ldolphin/webkit/LoadListener;->z:Ldolphin/net/c/c;

    .line 875
    :cond_3
    iget-boolean v2, p0, Ldolphin/webkit/LoadListener;->q:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method a(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 796
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Ldolphin/webkit/LoadListener;->A:J

    invoke-static {v2, v3, v4, p1}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;JLjava/util/Map;)Ldolphin/webkit/CacheManager$CacheResult;

    move-result-object v2

    .line 801
    const/4 v3, 0x0

    iput-object v3, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    .line 803
    iput-boolean v1, p0, Ldolphin/webkit/LoadListener;->t:Z

    .line 805
    if-eqz v2, :cond_1

    .line 810
    new-instance v3, Ldolphin/webkit/ab;

    invoke-direct {v3, p0, v2}, Ldolphin/webkit/ab;-><init>(Ldolphin/webkit/LoadListener;Ldolphin/webkit/CacheManager$CacheResult;)V

    iput-object v3, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    .line 814
    const-string v2, "if-none-match"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "if-modified-since"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 822
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    invoke-virtual {v1}, Ldolphin/webkit/ab;->b()V

    .line 830
    :goto_0
    iput-boolean v0, p0, Ldolphin/webkit/LoadListener;->t:Z

    .line 839
    :goto_1
    return v0

    .line 826
    :cond_0
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Ldolphin/webkit/LoadListener;->s:Ldolphin/webkit/ab;

    invoke-virtual {v1, v2, v3}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 839
    goto :goto_1
.end method

.method b()Ldolphin/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    return-object v0
.end method

.method b(Ldolphin/net/resource/f;)V
    .locals 0

    .prologue
    .line 1765
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->O:Ldolphin/net/resource/f;

    .line 1766
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1732
    if-eqz p1, :cond_0

    .line 1733
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->f:Ldolphin/net/e;

    .line 1734
    invoke-static {p1}, Ldolphin/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    invoke-static {p1}, Ldolphin/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    .line 1737
    :try_start_0
    new-instance v0, Ldolphin/net/e;

    iget-object v1, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->f:Ldolphin/net/e;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    :cond_0
    :goto_0
    return-void

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_0

    .line 1742
    :cond_1
    iput-object p1, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 952
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    if-nez v0, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0, p1}, Ldolphin/net/http/o;->a(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0, p2}, Ldolphin/net/http/o;->b(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->f()I

    move-result v0

    .line 960
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 962
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->a()Z

    move-result v0

    .line 964
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    invoke-virtual {v1, v0, p1, p2}, Ldolphin/net/c/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 967
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->a()Z

    move-result v1

    .line 969
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->h()Ljava/lang/String;

    move-result-object v4

    .line 970
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->i()Ljava/lang/String;

    move-result-object v5

    .line 971
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->k()Ljava/lang/String;

    move-result-object v6

    .line 972
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->l()Ljava/lang/String;

    move-result-object v7

    .line 973
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->j()Ljava/lang/String;

    move-result-object v8

    .line 975
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Ldolphin/net/c/c;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Z)V
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    invoke-virtual {v0, p1}, Ldolphin/net/c/c;->b(Z)V

    .line 926
    :cond_0
    if-nez p1, :cond_1

    .line 927
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->l()V

    .line 928
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->u()V

    .line 930
    :cond_1
    return-void
.end method

.method c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->i:Landroid/content/Context;

    return-object v0
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 1773
    iput-boolean p1, p0, Ldolphin/webkit/LoadListener;->Q:Z

    .line 1774
    return-void
.end method

.method public cancel()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1377
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    invoke-virtual {v0}, Ldolphin/net/c/c;->a()V

    .line 1379
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    .line 1382
    :cond_0
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    .line 1386
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->z()V

    .line 1387
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->F:Z

    return v0
.end method

.method downloadFile()V
    .locals 7
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1074
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1078
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->i()Ldolphin/webkit/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->i()Ldolphin/webkit/ae;

    move-result-object v0

    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v2}, Ldolphin/webkit/BrowserFrame;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldolphin/webkit/LoadListener;->L:Ldolphin/net/http/m;

    invoke-virtual {v3}, Ldolphin/net/http/m;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    iget-wide v5, p0, Ldolphin/webkit/LoadListener;->a:J

    invoke-virtual/range {v0 .. v6}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1089
    :cond_0
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->cancel()V

    .line 1090
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->q:Z

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->a()Z

    move-result v0

    .line 545
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    if-nez v0, :cond_0

    .line 894
    const/4 v0, 0x0

    .line 896
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->u:Ldolphin/net/http/o;

    invoke-virtual {v0}, Ldolphin/net/http/o;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 254
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/net/http/m;

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->b(Ldolphin/net/http/m;)V

    goto :goto_0

    .line 263
    :sswitch_1
    iget v0, p0, Ldolphin/webkit/LoadListener;->mNativeLoader:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/LoadListener;->R:Ldolphin/webkit/er;

    if-eqz v0, :cond_0

    :cond_1
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->F()V

    goto :goto_0

    .line 275
    :sswitch_2
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->A()V

    goto :goto_0

    .line 283
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Ldolphin/webkit/LoadListener;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 292
    :sswitch_4
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->I()V

    goto :goto_0

    .line 303
    :sswitch_5
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Ldolphin/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 304
    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Ldolphin/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 305
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v2}, Ldolphin/webkit/BrowserFrame;->i()Ldolphin/webkit/ae;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v2}, Ldolphin/webkit/BrowserFrame;->i()Ldolphin/webkit/ae;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ldolphin/webkit/ae;->a(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0

    .line 316
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 317
    const-string v1, "major"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v1, "minor"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "reason"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1, v0}, Ldolphin/webkit/LoadListener;->b(IIILjava/lang/String;)V

    goto :goto_0

    .line 328
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/http/SslCertificate;

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->b(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    .line 336
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/net/http/SslError;

    invoke-direct {p0, v0}, Ldolphin/webkit/LoadListener;->b(Ldolphin/net/http/SslError;)V

    goto/16 :goto_0

    .line 341
    :sswitch_9
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->R:Ldolphin/webkit/er;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/CacheManager$CacheResult;

    invoke-interface {v1, v0}, Ldolphin/webkit/er;->a(Ldolphin/webkit/CacheManager$CacheResult;)V

    goto/16 :goto_0

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
        0x78 -> :sswitch_2
        0x82 -> :sswitch_3
        0x83 -> :sswitch_9
        0x8c -> :sswitch_4
        0x96 -> :sswitch_5
        0xa0 -> :sswitch_6
        0xaa -> :sswitch_7
        0xb4 -> :sswitch_8
    .end sparse-switch
.end method

.method i()Ldolphin/net/http/SslError;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->x:Ldolphin/net/http/SslError;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    return-object v0
.end method

.method k()Ldolphin/net/e;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->f:Ldolphin/net/e;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->f:Ldolphin/net/e;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->f:Ldolphin/net/e;

    invoke-virtual {v0}, Ldolphin/net/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 1018
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->f:Ldolphin/net/e;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->f:Ldolphin/net/e;

    invoke-virtual {v0}, Ldolphin/net/e;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1028
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->h:Ljava/lang/String;

    .line 1037
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method o()Ldolphin/net/c/d;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->j:Ldolphin/net/c/d;

    return-object v0
.end method

.method p()J
    .locals 2

    .prologue
    .line 1046
    iget-wide v0, p0, Ldolphin/webkit/LoadListener;->A:J

    return-wide v0
.end method

.method pauseLoad(Z)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1356
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    invoke-virtual {v0, p1}, Ldolphin/net/c/c;->a(Z)V

    .line 1359
    :cond_0
    return-void
.end method

.method q()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/LoadListener;->y:Ldolphin/net/c/c;

    .line 1063
    return-void
.end method

.method r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->l:Ljava/lang/String;

    return-object v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->n:Ljava/lang/String;

    return-object v0
.end method

.method t()V
    .locals 4

    .prologue
    .line 1286
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->k:Ldolphin/webkit/BrowserFrame;

    iget-object v1, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    iget v2, p0, Ldolphin/webkit/LoadListener;->o:I

    iget v3, p0, Ldolphin/webkit/LoadListener;->S:I

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/BrowserFrame;->a(Ljava/lang/String;II)V

    .line 1287
    return-void
.end method

.method u()V
    .locals 3

    .prologue
    .line 1294
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->G()I

    move-result v0

    if-nez v0, :cond_2

    .line 1295
    new-instance v0, Ldolphin/webkit/la;

    invoke-direct {v0}, Ldolphin/webkit/la;-><init>()V

    .line 1296
    iput-object p0, v0, Ldolphin/webkit/la;->a:Ldolphin/webkit/LoadListener;

    .line 1297
    iget-object v1, p0, Ldolphin/webkit/LoadListener;->e:Ljava/lang/String;

    iput-object v1, v0, Ldolphin/webkit/la;->b:Ljava/lang/String;

    .line 1298
    iget-wide v1, p0, Ldolphin/webkit/LoadListener;->A:J

    iput-wide v1, v0, Ldolphin/webkit/la;->c:J

    .line 1299
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1301
    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->t()V

    .line 1306
    :goto_0
    iget v0, p0, Ldolphin/webkit/LoadListener;->mNativeLoader:I

    if-eqz v0, :cond_1

    .line 1307
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->B:Z

    if-nez v0, :cond_0

    .line 1308
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->D()V

    .line 1311
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->nativeFinished()V

    .line 1316
    :cond_1
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->z()V

    .line 1317
    return-void

    .line 1303
    :cond_2
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Ldolphin/webkit/kv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method v()V
    .locals 3

    .prologue
    .line 1339
    iget v0, p0, Ldolphin/webkit/LoadListener;->mNativeLoader:I

    if-eqz v0, :cond_1

    .line 1340
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->H()Ljava/lang/String;

    move-result-object v0

    .line 1341
    if-nez v0, :cond_0

    const-string v0, ""

    .line 1342
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->G()I

    move-result v1

    invoke-virtual {p0}, Ldolphin/webkit/LoadListener;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Ldolphin/webkit/LoadListener;->nativeError(ILjava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_1
    invoke-direct {p0}, Ldolphin/webkit/LoadListener;->z()V

    .line 1348
    return-void
.end method

.method w()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1748
    iput-object v0, p0, Ldolphin/webkit/LoadListener;->P:Ldolphin/net/resource/f;

    .line 1749
    iput-object v0, p0, Ldolphin/webkit/LoadListener;->O:Ldolphin/net/resource/f;

    .line 1750
    return-void
.end method

.method x()Z
    .locals 1

    .prologue
    .line 1769
    iget-boolean v0, p0, Ldolphin/webkit/LoadListener;->Q:Z

    return v0
.end method

.method y()V
    .locals 2

    .prologue
    .line 1842
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->G:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1843
    iget-object v0, p0, Ldolphin/webkit/LoadListener;->G:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Ldolphin/webkit/LoadListener;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1845
    :cond_0
    return-void
.end method
