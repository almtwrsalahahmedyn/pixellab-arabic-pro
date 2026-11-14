.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;
.super Landroid/view/View$BaseSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private max:I

.field private min:I

.field private progress:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState$1;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState$1;-><init>()V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->progress:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->max:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->min:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;)I
    .locals 0

    iget p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->progress:I

    return p0
.end method

.method public static synthetic access$302(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;I)I
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->progress:I

    return p1
.end method

.method public static synthetic access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;)I
    .locals 0

    iget p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->max:I

    return p0
.end method

.method public static synthetic access$402(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;I)I
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->max:I

    return p1
.end method

.method public static synthetic access$500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;)I
    .locals 0

    iget p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->min:I

    return p0
.end method

.method public static synthetic access$502(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;I)I
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->min:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->max:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->min:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
