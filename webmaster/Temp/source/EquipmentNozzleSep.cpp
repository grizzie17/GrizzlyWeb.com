/*---------------------------------------------------------------------+\
|																		|
|	Copyright 2003 Intergraph Corporation								|
|	All Rights Reserved													|
|																		|
|	Including software, file formats, and audio-visual displays;		|
|	may only be used pursuant to applicable software license			|
|	agreement; contains confidential and proprietary information of		|
|	Intergraph and/or third parties which is protected by copyright		|
|	and trade secret law and may not be provided or otherwise made		|
|	available without proper authorization.								|
|																		|
|	Unpublished -- rights reserved under the Copyright Laws of the		|
|	United States.														|
|																		|
|	Intergraph Corporation												|
|	Huntsville, Alabama	  35894-0001									|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|
|	Revision History:					(most recent entries first)
	15-Sept-2003		P. Ranguelov * Code Review J. Rich
		RI-CP·48414  made changes to work with designed-equipment too  
	16-May-2003			P.Ranguelov
		Created
\+---------------------------------------------------------------------*/
// EquipmentNozzleSep.cpp : Implementation of CEquipmentNozzleSeparator
		
#include "stdafx.h"
#include "EquipmentNozzleSeparator.h"
#include "EquipmentNozzleSep.h"
#include "SimpleCoDelegator.h"
#include "GraphicHelper.h"

#include "DistribPartPortConn.h"
#include "DistribPartPortConn_i.c"

/////////////////////////////////////////////////////////////////////////////
// CEquipmentNozzleSeparator

STDMETHODIMP CEquipmentNozzleSeparator::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_IJDwgWrapperCompound
		//&IID_IEquipmentNozzleSeparator
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}


/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::GetInnerUnk

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::GetInnerUnk(IUnknown * * ppInnerUnk)
{

	if (ppInnerUnk == NULL)
		return E_POINTER;
	*ppInnerUnk = m_pRealInner;
	(*ppInnerUnk)->AddRef();
	return S_OK;
	
}
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::SetInnerUnk

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::SetInnerUnk(IUnknown* pInnerUnk)
{
	if( !IsDrawable( pInnerUnk ) )
		return S_OK;


	HRESULT hr = NOERROR;
	CComPtr<IUnknown> pOuterUnk;
	hr = this->QueryInterface(IID_IUnknown,(void **) &pOuterUnk);
	m_pRealInner = pInnerUnk;
	m_pInner = 0;
	if(SUCCEEDED(hr))
	{
		hr = SimpleCoDelegator::CreateDelegator(pOuterUnk, pInnerUnk, IID_IUnknown,(void **) & m_pInner);
	}

	Initialize();

	return hr;
}

/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::EnumerateEntities

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::EnumerateEntities(IEnumUnknown** ppEnumGraphics)
{
	HRESULT hr;
	hr = GetControllingUnknown()->QueryInterface( IID_IEnumUnknown, (void**) ppEnumGraphics);
	
	//initalize to beginning of array
	m_iCurrentIndex = 0;
	
	return hr;

}
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::get_ViewDirection

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::get_ViewDirection(IJDVector * * pVal)
{
	if (pVal == NULL)
		return E_POINTER;
		
	return S_OK;
}
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::put_ViewDirection

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::put_ViewDirection(IJDVector * pVal)
{
	return S_OK;
}
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::get_UpDirection

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::get_UpDirection(IJDVector * * pVal)
{
	if (pVal == NULL)
		return E_POINTER;
		
	return S_OK;
}
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::put_UpDirection(IJDVector * pVal)

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::put_UpDirection(IJDVector * pVal)
{
	return S_OK;
}
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::get_ScaleFactor

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::get_ScaleFactor(double * pVal)
{
	if (pVal == NULL)
		return E_POINTER;
		
	return S_OK;
}
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::put_ScaleFactor

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::put_ScaleFactor(double pVal)
{
	return S_OK;
}
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::Next

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::Next(/* [in] */ ULONG celt,
					/* [out] */ IUnknown** rgelt,
					/* [out] */ ULONG* pceltFetched)
{
	ULONG lElemReturned = 0;
	long lSize;

	if(!pceltFetched || !rgelt)
		return E_INVALIDARG;

	lSize = m_Children.GetSize();

	if( m_iCurrentIndex >= lSize )
		return E_FAIL;

	

	while( m_iCurrentIndex < lSize && lElemReturned < celt )
	{
		rgelt[ lElemReturned ] = m_Children[ m_iCurrentIndex ];
		rgelt[ lElemReturned ]->AddRef();

		m_iCurrentIndex++;
		lElemReturned++;

	}

	*pceltFetched = lElemReturned;


	return NOERROR;
}


/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::Skip

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/					
STDMETHODIMP CEquipmentNozzleSeparator::Skip(/* [in] */ ULONG celt)
{
	return E_NOTIMPL;
} 
     
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::Reset

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::Reset( void)
{
	m_iCurrentIndex = 0;
	return S_OK;
}       

/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::Clone

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::Clone( /* [out] */ IEnumUnknown** ppenum)
{
	return E_NOTIMPL;
}


/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::get_Filter

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::get_Filter( /* [out, retval] */ BSTR* pVal)
{
	return E_NOTIMPL;
}	
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::put_Filter

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::put_Filter( /* [in] */ BSTR newVal)
{
	HRESULT hr = S_OK;
	int iSize;
	CComPtr<IJDwgWrapperPseudoFilter>	pChildPseudoFilter;
	m_bstrFilter = newVal;

	//set the filter value on all children
	iSize = m_Children.GetSize();
	for(int i = 0; i<iSize; i++)
	{
		hr = m_Children[i]->QueryInterface( IID_IJDwgWrapperPseudoFilter, (void**)  &pChildPseudoFilter);
		hr_test;

		hr = pChildPseudoFilter->put_Filter( m_bstrFilter );
		hr_test;

		pChildPseudoFilter = 0;

	}
wrapup:
	return hr;
}	
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::get_SubFilter

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::get_SubFilter(/* [out, retval] */ BSTR* pVal)
{
	return E_NOTIMPL;
}
/*---------------------------------------------------------------------+\

 *  NAME:	STDMETHODIMP CEquipmentNozzleSeparator::put_SubFilter

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
STDMETHODIMP CEquipmentNozzleSeparator::put_SubFilter( /* [in] */ BSTR pVal)
{
	return E_NOTIMPL;
}

/*---------------------------------------------------------------------+\

 *  NAME:	HRESULT CEquipmentNozzleSeparator::Initialize

 *  DESCRIPTION:

 *  AUTHOR: P. Ranguelov				DATE:	16-May-2003

\+---------------------------------------------------------------------*/
HRESULT CEquipmentNozzleSeparator::Initialize()
{
	HRESULT hr = NOERROR;
	CComPtr<IJDistribPartOccur>		pIJDistribPartOccur;
	CComPtr<IJElements>				pElements;
	CComVariant						vEnumUnk;
	CComPtr<IEnumUnknown>			pEnum;
	long							lCountOfElements;
	int								ii;
	CComObject<CGraphicHelper>*		pObj;
	CComPtr<IJDwgExternalModule>	pChildExt;
	CComPtr<IJDwgWrapperPseudoFilter>	pChildPseudoFilter;
	IUnknown*						pChildUnk;
	CComPtr<IUnknown>				pUnk;





	//clean up just in case
	FinalRelease();
	FinalConstruct();

	hr = m_pRealInner->QueryInterface( IID_IJDistribPartOccur, (void**) &pIJDistribPartOccur);
	hr_test;

	//get ports
	hr = pIJDistribPartOccur->GetPorts( DistribPortStatus_ALL,  DistribPortType_PIPE,  &pElements );
	hr_test;

	hr = pElements->get_Count(&lCountOfElements);
	hr_test;



	//add the tank itself
	CComObject<CGraphicHelper>::CreateInstance( &pObj );  //refCount = 0

	hr = pObj->QueryInterface( IID_IJDwgExternalModule, (void**)&pChildExt );
	hr_test;

	hr = pChildExt->SetInnerUnk( m_pRealInner );
	hr_test;

	hr = pChildExt->QueryInterface( IID_IJDwgWrapperPseudoFilter, (void**) &pChildPseudoFilter );
	hr_test; 

	hr = pChildPseudoFilter->put_SubFilter( L"Body");
	hr_test;

	hr = pChildExt->QueryInterface( IID_IUnknown, (void**) &pChildUnk );
	hr_test;

	m_Children.Add( pChildUnk );

	
	pChildExt = 0;
	pChildPseudoFilter = 0;

	for ( ii = 1; ii <= lCountOfElements; ii++)
	{
		//create a wrapper for the child
		CComObject<CGraphicHelper>::CreateInstance( &pObj ); //refCount = 0
		

		hr = pObj->QueryInterface( IID_IJDwgExternalModule, (void**)&pChildExt );
		hr_test;

		CComVariant					varElement;
		//get the element

		hr = pElements->get_Item(CComVariant(ii), &varElement);
		hr_test;

		if( VT_UNKNOWN == varElement.vt )
		{
			pUnk = varElement.punkVal;
			
		}
		else if( VT_DISPATCH == varElement.vt )
		{
			hr = varElement.pdispVal->QueryInterface( IID_IUnknown, (void**) &pUnk );
			hr_test;					
		}

		hr = pChildExt->SetInnerUnk( pUnk );
		hr_test;

		hr = pChildExt->QueryInterface( IID_IUnknown, (void**) &pChildUnk );
		hr_test;

		hr = pChildExt->QueryInterface( IID_IJDwgWrapperPseudoFilter, (void**) &pChildPseudoFilter );
		hr_test; 

		hr = pChildPseudoFilter->put_SubFilter( L"Nozzles");
		hr_test;

		m_Children.Add( pChildUnk );

		pUnk = 0;
		pChildExt = 0;
		pChildPseudoFilter = 0;
	}



wrapup:
	return hr;
}

BOOL CEquipmentNozzleSeparator::IsDrawable( IUnknown* pUnk)
{
	HRESULT hr;
	BOOL bIsDrawable = FALSE;
	CComPtr<IJGraphicEntity> pIJGE;

	hr = pUnk->QueryInterface(IID_IJGraphicEntity,(LPVOID*)&pIJGE) ;

	if( SUCCEEDED(hr) && pIJGE.p )
	{
		DWORD properties = 0 ;
							
		hr = pIJGE->GetProperties(&properties);

		if( (properties & IJGraphicEntity::NotDrawable) != IJGraphicEntity::NotDrawable)
		{	
			bIsDrawable = TRUE;								
		}
	}


	return bIsDrawable;
}